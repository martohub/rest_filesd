FROM python:3.7-alpine 
WORKDIR /rest_filesd 
COPY requirements.txt /rest_filesd
RUN pip3 install -q -r requirements.txt 
RUN apk add curl net-tools
RUN export FLASK_APP=manage.py
RUN export FLASK_ENV=production
COPY . /rest_filesd 
ENTRYPOINT ["python3"]
CMD ["run.py"]
