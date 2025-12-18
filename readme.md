# YouTube Server

## Overview
This project sets up a Flask-based server to handle YouTube-related operations. It includes Docker support for easy deployment and uses FFmpeg for media processing.

## Features
- Flask server for API handling
- FFmpeg integration for media processing
- Dockerized setup for easy deployment
- Persistent database using `pickledb`

## Prerequisites
- Docker
- Docker Compose

## Setup
1. Clone the repository:
   ```bash
   git clone <repository-url>
   ```
2. Navigate to the project directory:
   ```bash
   cd yt-server
   ```
3. Build and start the Docker containers:
   ```bash
   docker-compose up --build
   ```

## Environment Variables
Define the following variables in the `.env` file:
- `accessToken`: Your access token for authentication.

## Usage
- The server runs on `http://localhost:8011`.
- API endpoints can be accessed via the exposed port.

## Contributing
Feel free to submit issues and pull requests to improve the project.

## License
This project is licensed under the MIT License.

## What it will do

- run a flask server
- on API call start the script