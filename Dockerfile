FROM python:3.9
COPY . /opt/app
WORKDIR /opt/app
rUN apt-get update
RUN pip install -r requirements.txt
EXPOSE 3000
ENV FLASK_APP=app.py
CMD [ "flask", "run", "--host=0.0.0.0" ]
