# API Documentation

> Replace this template with the actual Express routes from the Team 11 backend. The routes below are examples only and must not be treated as verified implementation details.

## Base URL

Local example: `http://localhost:5000`

## Authentication

If the application uses Bearer JWT authentication, protected requests commonly include:

```http
Authorization: Bearer <token>
```

## Endpoint Catalogue

| Method | Example route | Description | Authentication |
|---|---|---|---|
| POST | `/api/auth/register` | Register account, if implemented | No |
| POST | `/api/auth/login` | Sign in, if implemented | No |
| GET | `/api/tasks` | List tasks | Yes |
| POST | `/api/tasks` | Create task | Yes |
| GET | `/api/tasks/:id` | Get one task | Yes |
| PATCH | `/api/tasks/:id` | Update task | Yes |
| DELETE | `/api/tasks/:id` | Delete task | Yes |

## Add before submission

For every actual endpoint, document:
- HTTP method and exact route
- Authentication and authorization requirements
- Path and query parameters
- Request body schema
- Success response and HTTP status
- Error responses
- A real Postman screenshot or exported collection
