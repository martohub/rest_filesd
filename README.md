# rest_filesd -> REST API which stores targets and labels in sqlite3 database and converts them to YAML files, so they can be scraped by Prometheus 

#installation (python 3.8.2)

git clone https://github.com/thecloudroot/rest_filesd

cd rest_filesd

python3 -m venv rest_filesd

source rest_filesd/bin/activate

pip install -r requirements.txt      #and ignore all frontend errors

export FLASK_APP=manage.py

flask run --host=0.0.0.0

#flask run --host=127.0.0.1

############
USAGE:
############

curl -i -L -H "Content-Type: application/json" -X POST http://localhost:5000/api/v1/targets -d '{
  "target": "brak1.com",
  "job": "blackbox",
  "labels": {
    "environment": "consumer",
    "emai_to": "bot4",
    "severity": "critical"
  }
}'

curl -i -L -H "Content-Type: application/json" -X POST http://localhost:5000/api/v1/targets -d '{
  "target": "brak1.com",
  "job": "blackbox",
  "labels": {
    "environment": "consumer",
    "emai_to": "bot41",
    "severity": "critical"
  }
}'

############
DELETING:
############

curl -L -i -H "Content-Type: application/json" -X DELETE http://localhost:5000/api/v1/targets/{database_uid}

example:
#
curl -L -i -H "Content-Type: application/json" -X DELETE http://localhost:5000/api/v1/targets/1

