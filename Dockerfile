# set base image (host OS)
FROM python:3.8

# set the working directory in the container
WORKDIR /project

# copy the dependencies file to the working directory
COPY project/requirements.txt .

# install dependencies
RUN pip install -r requirements.txt

# copy the content of the local src directory to the working directory
COPY project/app/ .

# command to run on container start
CMD [ "python", "./server.py" ]