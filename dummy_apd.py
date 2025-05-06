# dummy_apd.py
from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route('/', methods=['POST'])
def issue_p3dx_token():
    try:
        # Just print incoming data (optional for debugging)
        data = request.get_json()
        print("Received request:", data)

        # Respond with a hardcoded access token
        return jsonify({
            "status": "success",
            "results": {
                "accessToken": "p3dx-test-token-1234"
            }
        }), 200

    except Exception as e:
        print("Error:", e)
        return jsonify({"status": "error", "message": str(e)}), 500


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5001)
