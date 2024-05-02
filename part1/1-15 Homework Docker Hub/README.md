# Blog app

This is a Node.js with Express Backend app. An API for blog post for CRUD operations.

## Prerequisites

- Node.js 16.x installed on your machine
- Docker installed on your machine (if running with Docker)

## Installation

1. Clone this repository to your local machine.
2. Navigate to the project directory.

## Running Locally

To run the application locally, follow these steps:

1. Install dependencies:

- npm install

2. Start the application

- npm start

3. Access the application in your browser at http://localhost:3000 (or another specified port).

## Running with Docker

To run the application using Docker, follow these steps:

Download image:
- https://hub.docker.com/r/patske3000/blog-app

Build the Docker image:

- docker build -t yourimagename .

Run the Docker container:

- docker run -p 3003:3003 yourimagename

Access the application in your browser at http://localhost:3000.

## Environment Variables

NODE_ENV: Specifies the environment mode. Default is development.
