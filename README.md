# Open Interpreter Docker

Welcome to the Open Interpreter Docker project! This repository provides a Dockerized setup for the Open Interpreter, making it easier to deploy and run in a consistent environment.

## Table of Contents
- [Introduction](#introduction)
- [Features](#features)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
  - [Usage](#usage)
- [Configuration](#configuration)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

## Introduction

Open Interpreter Docker is designed to simplify the deployment of the Open Interpreter by encapsulating it within a Docker container. This ensures that the interpreter runs consistently across different environments, minimizing setup issues and dependencies conflicts.

## Features

- **Containerized Setup**: Runs Open Interpreter in a Docker container, ensuring a consistent environment.
- **Easy Deployment**: Simplifies the deployment process with Docker Compose.
- **Scalability**: Easily scale the interpreter instances with Docker’s orchestration tools.
- **Configurability**: Supports configuration through environment variables and configuration files.

## Getting Started

Follow these instructions to get a copy of the project up and running on your local machine.

### Prerequisites

- Docker: [Install Docker](https://docs.docker.com/get-docker/)
- Docker Compose: [Install Docker Compose](https://docs.docker.com/compose/install/)

### Installation

1. **Clone the repository:**
    ```sh
    git clone https://github.com/louispaulet/open_interpreter_docker.git
    cd open_interpreter_docker
    ```

2. **Make a .env file and fill-in your api key**
    ````
    OPENAI_API_KEY=your-api-key-here
    ````

3. **Build the Docker image:**
    ```sh
    docker-compose build
    ```

### Usage

1. **Start the Docker container:**
    ```sh
    docker-compose up -d
    ```

2. **Access the interpreter:**
    Open your browser and navigate to `http://localhost:your_port` (replace `your_port` with the port number configured in `docker-compose.yml`).

3. **Stop the Docker container:**
    ```sh
    docker-compose down
    ```

## Configuration  

By default, Jupyter will be availiable on port 8888 with password "docker".  

The application can be configured via the `docker-compose.yml` file or environment variables. Below are some key configurations:

- **Port Configuration:** Change the port mapping in the `docker-compose.yml` file.
- **Environment Variables:** Set environment variables in the `docker-compose.yml` file to configure the interpreter’s behavior.

Example `docker-compose.yml`:
````yaml
services:
  open_interpreter:
    build: .
    ports:
      - "your_port:internal_port"
    environment:
      - VARIABLE_NAME=value
````

## Contributing

We welcome contributions to improve Open Interpreter Docker. To contribute, please follow these steps:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature/your-feature`).
3. Make your changes and commit them (`git commit -am 'Add new feature'`).
4. Push to the branch (`git push origin feature/your-feature`).
5. Create a new Pull Request.

Please make sure to update tests as appropriate.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact

For any questions or suggestions, feel free to open an issue or contact the repository owner:

- **Author:** Louis Paulet
- **GitHub:** [louispaulet](https://github.com/louispaulet)

Thank you for using Open Interpreter Docker!
