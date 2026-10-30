# A Service-Oriented Task & Deadline Management Platform

**Team 11 | Software-Oriented Architecture (SOA) Project**

A web-based task and deadline management platform designed to help users organize tasks, track due dates, and receive deadline-related notifications.

> **Implementation note:** This repository template is based on the technology stack supplied by Team 11. Update the feature list, commands, screenshots, API routes, and environment-variable names to match the actual source code before publishing. Do not claim a feature is complete until it has been implemented and tested.

## Project Overview

The platform is organized as a full-stack application with a React frontend, a Node.js/Express backend, MongoDB persistence, and notification-related components.

### Technology Stack

| Layer | Technology |
|---|---|
| Frontend | React.js, Tailwind CSS |
| Backend | Node.js, Express.js |
| Database | MongoDB |
| Authentication | JWT |
| Scheduled processing | Node-Cron |
| Email notifications | Nodemailer |
| Real-time communication | Socket.IO |
| API style | REST |
| Containerization | Docker, Docker Compose |
| Development and testing | GitHub, Postman |

## Intended Capabilities

The following capabilities describe the intended project scope. Retain only the items that are present in the final implementation.

- Create, view, update, and delete tasks.
- Store task information and due dates in MongoDB.
- Protect applicable API endpoints using JWT authentication.
- Check deadlines using a scheduled Node-Cron job.
- Send email reminders using Nodemailer.
- Deliver real-time notification events using Socket.IO.

## Repository Structure

```text
.
├── backend/
│   ├── Dockerfile
│   ├── .dockerignore
│   └── package.json             # Add your backend package file
├── frontend/
│   ├── Dockerfile
│   ├── .dockerignore
│   └── package.json             # Add your frontend package file
├── docs/
│   ├── API_DOCUMENTATION.md
│   ├── architecture/
│   └── screenshots/
├── .env.example
├── .gitignore
├── docker-compose.yml
├── README.md
└── SETUP.md
```

Your actual repository may use different folder names. If so, update the Docker build contexts and commands accordingly.

## Getting Started

### Option 1: Run locally

1. Install a compatible Node.js LTS release and npm.
2. Ensure MongoDB is available locally or through a hosted MongoDB service.
3. Install dependencies in the frontend and backend folders.
4. Create environment files using the variable names expected by your source code.
5. Start the backend and frontend using the scripts defined in their respective `package.json` files.

See [SETUP.md](SETUP.md) for the setup checklist.

### Option 2: Run with Docker Compose

Docker Compose is configured as a starter deployment for a React application served by Nginx, an Express backend, and MongoDB.

1. Ensure the frontend and backend each contain a valid `package.json`.
2. Confirm that the frontend build output is `dist` (Vite) or adjust the frontend Dockerfile for your build tool.
3. Confirm that the backend starts with `npm start`, or change the command in `docker-compose.yml`.
4. Create a root `.env` file based on `.env.example`.
5. Run:

```bash
docker compose up --build
```

The default template maps the frontend to `http://localhost:8080`, the backend to `http://localhost:5000`, and MongoDB to `localhost:27017`.

> The frontend must be configured to call the backend using a browser-reachable URL such as `http://localhost:5000` when accessed from the host browser. A Docker-internal hostname such as `backend` is only resolvable by other containers, not by the user's browser.

To stop the services:

```bash
docker compose down
```

To remove the MongoDB volume as well (this permanently deletes the stored local database data):

```bash
docker compose down -v
```

## Environment Variables

See `.env.example`. The exact names must match the backend implementation. Never commit real passwords, JWT secrets, SMTP credentials, or production connection strings.

## API Documentation

Add the actual endpoint list, request bodies, response examples, and authentication requirements to `docs/API_DOCUMENTATION.md`. Do not leave example endpoints presented as implemented routes.

## Testing

Use Postman to validate the real API endpoints. Recommended checks include:

- Authentication success and failure.
- Access to protected endpoints with and without a valid token.
- Task creation, retrieval, update, and deletion.
- Ownership checks for user-specific task records.
- Deadline scheduler behavior with controlled test dates.
- Email and Socket.IO notification behavior.

Record actual test results and attach screenshots under `docs/screenshots/`.

## Security Notes

- Keep `.env` files out of Git.
- Use a strong, unique JWT secret.
- Hash passwords; never store plaintext passwords.
- Validate request data on the server.
- Verify resource ownership for user-specific tasks.
- Restrict CORS to trusted origins in deployed environments.
- Do not expose secrets or live JWTs in screenshots, logs, or documentation.

## Team

**Team 11 – SOA Conference / Project**

| Name | Roll Number |
|---|---|
| Madhu Praveena | 2420030321 |
| Hema Thulasi| 2420030699|
| Ranan Magdala| 2420030744 |

## Project Documentation

Add the final project report, architecture diagrams, API documentation, and verified screenshots to the `docs/` directory or link them here.

## License

Add the license required by your course or team. If no open-source license has been selected, do not imply that the repository is licensed for unrestricted reuse.
