FROM python:3.9
COPY . /opt/app
WORKDIR /opt/app
RUN apt-get update
RUN python -m pip install --upgrade pip
RUN pip install flask
RUN pip install -r requirements.txt
ENV FLASK_APP=app.py
EXPOSE 3000
CMD [ "flask", "run" ]


