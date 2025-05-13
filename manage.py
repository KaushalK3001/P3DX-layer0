#mport requests
from flask import Flask, jsonify, Response
from flask import request
import subprocess
import os
import json
import stat
import logging

app = Flask(__name__)

@app.before_request
def before_request():
    return

state = {
    "step": 0,
    "maxSteps": 5,
    "title": "Inactive",
    "description": "Inactive",
}

#SETSTATE: Sets the state of the enclave as a JSON object
@app.route("/enclave/setstate", methods=["POST"])
def setState():
    global state
    # global is_app_running
    print("In /enclave/setstate...")
    content = request.json
    state = content["state"]
    # if(state["step"]==5):
    #     #Resetting deploy flag as false
    #     is_app_running = False
    response = app.response_class(
        response="{ok}", status=200, mimetype="application/json"
    )
    return response


#STATE: Returns the current state of the enclave as a JSON object
@app.route("/enclave/state", methods=["GET"])
def get_state():
    global state # = {"step":3, "maxSteps":10, "title": "Building enclave,", "description":"The enclave is being compiled,"}
    return jsonify(state) 


#INFERENCE: Returns the inference as a JSON object, containing runOutput & labels
@app.route("/enclave/inference", methods=["GET"])
def get_inference():
    # print("STARTING inference")
    logger = logging.getLogger()
    logging.debug('STARTING INFERNCE')
    logger.handlers[0].flush()
    global state
    # global app_name
    if(state["step"]!=5):
        response={
                "title": "Error: No Inference Output/File does not exist",
                "description": "No inference output found."
            }
        return jsonify(response), 403

    #give output file path
    #output_file = "/app/..."
    
    if os.path.exists(output_file):
        try:
            # Use subprocess to run chmod with sudo
            result = subprocess.run(['sudo', 'chmod', '755', output_file], 
                                    check=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
            
            # Check result
            if result.returncode == 0:
                print(f"Successfully set a+x permissions on file: {output_file}")
            else:
                print(f"Failed to set permissions. Error: {result.stderr.decode()}")

        except subprocess.CalledProcessError as e:
            print(f"Error executing sudo chmod: {e.stderr.decode()}")
    else:
        print(f"File not found: {output_file}")


    if os.path.isfile(output_file):
        f=open(output_file, "r")
        content = f.read()
        response = app.response_class(
            response=content,
            mimetype="application/json"
        )
        return response
    else:
        response={
                "title": "Error: No Inference Output/File does not exist",
                "description": "No inference output found."
            }
        return jsonify(response), 403
