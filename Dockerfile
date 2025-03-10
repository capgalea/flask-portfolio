# Use the official Python image as the base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /flask-portfolio

# Copy requirements.txt into the container
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Expose the port your app runs on
EXPOSE 6001

# Start the Flask application
CMD ["python", "-m", "flask", "--app", "api/index.py", "run", "--host=0.0.0.0", "--port=6001"]