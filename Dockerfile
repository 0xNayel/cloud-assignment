# Use the official Python image from the Docker Hub
FROM python:3.11

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install nltk and download required resources
RUN pip install nltk
RUN python -m nltk.downloader stopwords punkt

# Run the Python script when the container launches
CMD ["python", "app.py"]
