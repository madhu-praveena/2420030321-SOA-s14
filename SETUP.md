# Setup Guide

This guide is a starter template for Team 11's Service-Oriented Task & Deadline Management Platform. Confirm all commands and environment-variable names against the actual project.

## Prerequisites

- Node.js and npm compatible with the project dependencies
- MongoDB local instance or hosted database
- Git
- Docker Engine and Docker Compose (optional)
- SMTP credentials for email reminders (if enabled)

## 1. Install dependencies

```bash
cd backend
npm install

cd ../frontend
npm install
```

## 2. Configure environment

Create environment files in the locations expected by the application. The root `.env.example` lists common variables, but the backend may require different names.

Do not commit `.env` files or credentials.

## 3. Start the backend

From `backend/`, use the script defined in `package.json`, for example:

```bash
npm run dev
```

or:

```bash
npm start
```

## 4. Start the frontend

From `frontend/`, use the script defined in `package.json`, for example:

```bash
npm run dev
```

## 5. Run with Docker Compose

From the repository root:

```bash
docker compose up --build
```

Open `http://localhost:8080` for the frontend and `http://localhost:5000` for the backend, assuming the default port mappings are unchanged.

## Troubleshooting

- **MongoDB connection error:** Check the database URI, credentials, network access, and whether the database is running.
- **Frontend cannot call backend:** Check the frontend API base URL and backend CORS configuration.
- **Email is not sent:** Check SMTP host, port, credentials, provider restrictions, and backend logs.
- **Socket.IO does not connect:** Check the server URL, allowed origin, authentication configuration, and matching client/server event setup.
- **Container exits immediately:** Inspect logs with `docker compose logs backend` or `docker compose logs frontend`.

## Before submitting

- Replace example configuration with the exact configuration used by the project.
- Confirm the real start scripts in both `package.json` files.
- Confirm the frontend build output directory.
- Test the Docker setup from a clean build.
- Add real screenshots and Postman evidence.
