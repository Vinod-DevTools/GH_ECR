# Use a small Python base image
FROM python:3.11-slim

# Copy the script into the root of the container
COPY hello.py .

# Run the script
CMD ["python", "hello.py"]
