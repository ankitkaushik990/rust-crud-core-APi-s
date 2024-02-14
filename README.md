# CRUD-API-s-using-rust
basic CRUD APi using RUST and docker 
# Rust App

This is a simple Rust application that uses the Rocket web framework and PostgreSQL database.

## Table of Contents

- [Features](#features)
- [Prerequisites](#prerequisites)
- [Getting Started](#getting-started)
- [Usage](#usage)
- [Endpoints](#endpoints)
- [Docker](#docker)
- [Contributing](#contributing)
- [License](#license)

## Features

- CRUD operations for managing users.
- PostgreSQL database integration.
- RESTful API with Rocket.

## Prerequisites

Before you begin, ensure you have met the following requirements:

- Rust installed. [Install Rust](https://www.rust-lang.org/tools/install)
- Docker and Docker Compose (optional, for containerized deployment).
- PostgreSQL installed or accessible (either locally or via a connection URL).

## Getting Started

1. Clone the repository:

   ```bash
   git clone https://github.com/your-username/rust-app.git
Change into the project directory:


cd rust-app
Install dependencies:

bash
Copy code
cargo build
Set up the PostgreSQL database:

Create a .env file in the project root and add your PostgreSQL connection URL:

```
DATABASE_URL=postgres://username:password@localhost:5432/database_name
Run database migrations:

```
diesel migration run
Usage
To start the application, run:

```
cargo run --release
The application will be available at http://localhost:8080.

Endpoints
POST /users: Create a new user.
GET /users/{id}: Get a user by ID.
GET /users: Get all users.
PUT /users/{id}: Update a user by ID.
DELETE /users/{id}: Delete a user by ID.
Docker
To run the application and PostgreSQL using Docker Compose:


docker-compose up -d
The application will be available at http://localhost:8080.

Contributing
Contributions are welcome! Feel free to open issues or submit pull requests.

License
This project is licensed under the MIT License.
