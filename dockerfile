# Use an official lightweight Python base image
FROM python:3.9-slim

# Set working directory in the container
WORKDIR /app

# Copy requirements first to leverage Docker cache
COPY requirement.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirement.txt

# Copy the rest of the application code
COPY app.py .

# Expose the port used by your Flask app
EXPOSE 5000

# Define default command to run your Flask app
CMD ["python", "app.py"]
