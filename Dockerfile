FROM python:3.9
COPY . /opt/app
WORKDIR /opt/app
RUN apt-get update
RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt
EXPOSE 3000
CMD [ "python3", "app.py" ]

