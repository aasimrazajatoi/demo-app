# Use a base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the application files to the container
COPY app.py .

# Install dependencies
RUN pip install --no-cache-dir flask

# Expose a port (if needed)
EXPOSE 5000

# Set the command to run when the container starts
CMD ["python", "app.py"]
