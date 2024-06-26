# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Install any needed packages specified in requirements.txt
# Note: You should have a requirements.txt in your project directory
RUN pip install --no-cache-dir -r requirements.txt

# Define environment variable
ENV PORT=8000

# Run uvicorn when the container launches
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]