# syntax=docker/dockerfile:1
# Specifies the parser directive (aka syntax) to be used when parsing. This is pointing to the latest release of the version 1 syntax

#Official Python Docker Image
FROM python:3.9-slim-buster

#Create a working directory, aka a default path location
WORKDIR /app

#COPY <Source> <Destination>. This copies into the workdir by default
COPY requirements.txt requirements.txt

#Command to run in the new Python instance
RUN pip3 install -r requirements.txt

#Add our source code to the image
COPY . .

#When our image is executed, tell Docker what command to run
CMD [ "python3", "-m", "flask", "run", "--host=0.0.0.0"]