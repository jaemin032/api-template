FROM rappdw/docker-java-python


RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app


# Install any needed packages specified in requirements.txt
RUN python -m pip install --upgrade pip
RUN python -m pip install --trusted-host pypi.python.org -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
#ENV NAME World

# Run app.py when the container launches
CMD ["python", "app.py"]