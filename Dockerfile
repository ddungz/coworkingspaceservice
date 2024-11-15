# Official Python 3.12 image as the base
FROM python:3.12-slim

# Set the working directory in the container
WORKDIR /app

# Copy the rest of the application code and requirements file to the container
COPY ./analytics/. .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port the app runs on
EXPOSE 80

# Run the application
CMD ["python", "app.py"]
