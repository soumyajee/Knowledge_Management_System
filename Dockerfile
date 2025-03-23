# Use Python 3.10 slim variant as base image
FROM python:3.10-slim-buster

# Set the working directory inside the container
WORKDIR /main

# Copy requirements.txt to the container
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the app folder into the container
COPY app /main/app

# Set the command to run the application
CMD ["python", "app/main.py"]
