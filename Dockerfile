# Python 3.9 slim-buster (Debian 10 Linux Distribution) will be the base image for this python application
FROM python:3.9-slim-buster

# Set the working directory inside the Docker container
WORKDIR /app

# Copy the requirements.txt file to the working directory inside the Docker container
COPY analytics/requirements.txt /app/

# Install the necessary Python packages and dependencies for the application
RUN pip install --upgrade pip && pip install -r requirements.txt

# Copy the contents of the 'app' directory to the working directory inside the Docker container
COPY analytics/ /app/

# Set the command to run the application
CMD ["python", "/app/app.py"]