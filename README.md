## Prerequisites

- Node.js
- Mongo DB
- Git

## Getting started

First is to rename envfile to .env

Follow these steps at the command line:

### 1. Install Dependencies

```bash
npm install
```

### 2. Start Mongo

```bash
mongod
```
Optionally, I've included a Dockerfile to run a mongodb instance

 To run this Docker container:
 1. Open a terminal and navigate to the directory containing the Dockerfile
 2. Build the Docker image:
    docker build -t contacts-db .
 3. Run the container:
    docker run -d -p 27017:27017 --name mongodb-instance contacts-db


 This will start a MongoDB instance accessible at localhost:27017
 Username: root
 Password: example

 To stop the container:
    docker stop mongodb-instance

 To start it again:
    docker start mongodb-instance

 Create a database on that instance name it "sample-db" with collection "contacts"

### 3. Run the solution

```bash
npm run start
```
