import subprocess
import os
import PPDX_SDK
import sys
import json
import shutil
import argparse

# Simulate sourcing external scripts -  
# You'd integrate the necessary functions from setState.sh and profilingStep.sh here 


def load_config(filename):
    """Loads configuration data from a JSON file."""
    try:
        with open(filename, 'r') as file:
            return json.load(file)
    except FileNotFoundError:
        raise FileNotFoundError(f"Configuration file '{filename}' not found.")
    except json.JSONDecodeError:
        raise ValueError(f"Invalid JSON format in configuration file '{filename}'.")

def box_out(message):
    """Prints a box around a message using text characters."""

    lines = message.splitlines()  # Split message into lines
    max_width = max(len(line) for line in lines)  # Find longest line

    # Top border
    print("+" + "-" * (max_width + 2) + "+")

    # Content with padding
    for line in lines:
        print("| " + line.ljust(max_width) + " |")

    # Bottom border
    print("+" + "-" * (max_width + 2) + "+")


def remove_files():
    file_path = os.path.join('.','docker-compose.yml')
    if os.path.exists(file_path):
        os.remove(file_path)
        print(f"Removed file: {file_path}")
    else:
        print(f"File not found: {file_path}")
    
    folder_path = os.path.join('/tmp', 'FCoutput')
    if os.path.exists(folder_path):
        shutil.rmtree(folder_path)
        print(f"Removed folder and contents: {folder_path}")
    else:
        print(f"Folder not found: {folder_path}")
    
    # make FCoutput folder
    os.makedirs('/tmp/FCoutput', exist_ok=True)

    folder_path = os.path.join('/tmp', 'FCcontext')
    if os.path.exists(folder_path):
        shutil.rmtree(folder_path)
        print(f"Removed folder and contents: {folder_path}")
    else:
        print(f"Folder not found: {folder_path}")

    # make contextFolder folder if it does not exist
    os.makedirs('/tmp/FCcontext', exist_ok=True)

    folder_path = os.path.join('/tmp', 'FCinput')
    if os.path.exists(folder_path):
        shutil.rmtree(folder_path)
        print(f"Removed folder and contents: {folder_path}")
    else:
        print(f"Folder not found: {folder_path}")

    # make contextFolder folder if it does not exist
    os.makedirs('/tmp/FCinput', exist_ok=True)

    folder_path = os.path.join('.', 'keys')
    if os.path.exists(folder_path):
        shutil.rmtree(folder_path)
        print(f"Removed folder and contents: {folder_path}")
    else:
        print(f"Folder not found: {folder_path}")


# Start the main process
if __name__ == "__main__":

    config_file = "config.json"
    config = load_config(config_file)

    address = config["address"]

    with open('data/context.json', 'r') as file:
        context = json.load(file)
    ppb_number = context["ppb_number"]

    # Step 2 - send Coco token to APD
    box_out("Sending Coco token to APD for verification...")
    PPDX_SDK.setState("TEE Attestation & Authorisation","Step 2",2,5,address)
    attestationToken = PPDX_SDK.getAttestationToken(config)
    print("Attestation token received from APD")
    print(attestationToken)

    # Call APD for getting ADEX data access token
    box_out("Getting ADEX data access token")
    adexDataToken = PPDX_SDK.getADEXDataAccessTokens(config)
    print(adexDataToken)

    # Call APD for getting Rythabandhu data access token
    box_out("Getting Rytabandhu consent token")
    farmerDataToken = PPDX_SDK.getFarmerDataToken(config, ppb_number)
    print(farmerDataToken)

    # Step 8 - Getting files from RS
    box_out("Getting files from RS...")
    PPDX_SDK.setState("Getting data into Secure enclave","Step 3",3,5, address)

    # getting files from ADEX
    PPDX_SDK.getSOFDataFromADEX(config, adexDataToken)
    PPDX_SDK.getYieldDataFromADEX(config, adexDataToken)
    PPDX_SDK.getAPMCDataFromADEX(config, adexDataToken)

    # getting Rytabandhu farmer data
    box_out("Getting Rytabandhu farmer data")
    PPDX_SDK.getFarmerData(config, ppb_number, farmerDataToken, attestationToken)

    PPDX_SDK.setState("Computing farmer credit amount in TEE","Step 4",4,5, address)