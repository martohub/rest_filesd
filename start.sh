pip3 install -q -r requirements.txt
export FLASK_APP=manage.py
export FLASK_ENV=production
flask run --host=0.0.0.0
