FROM ubuntu:latest
RUN apt update && apt install python3
COPY ../first-flask-app /app
RUN python3 -m pip install --upgrade pip && pip freeze > requirements.txt && pip install -r requirements.txt && python -m flask run
