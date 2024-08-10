# Use the official MongoDB image as the base image
FROM mongo:latest

# Set environment variables
ENV MONGO_INITDB_ROOT_USERNAME=root
ENV MONGO_INITDB_ROOT_PASSWORD=example

# Expose the default MongoDB port
EXPOSE 27017

# Start MongoDB when the container launches
CMD ["mongod"]

# To run this Docker container:
# 1. Open a terminal and navigate to the directory containing the Dockerfile
# 2. Build the Docker image:
#    docker build -t contacts-db .
# 3. Run the container:
#    docker run -d -p 27017:27017 --name mongodb-instance contacts-db
#
#
# This will start a MongoDB instance accessible at localhost:27017
# Username: root
# Password: example
#
# To stop the container:
#    docker stop mongodb-instance
#
# To start it again:
#    docker start mongodb-instance
#
# Create a database on that instance name it "sample-db" with collection "contacts"

