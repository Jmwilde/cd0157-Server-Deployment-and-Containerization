# Dockerfile for final project

# Start with a base image
FROM python:stretch

# Copy files to the image
COPY . /app

# Set the directory for future commands
WORKDIR /app

# Install dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Set the container as an executable
ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]







