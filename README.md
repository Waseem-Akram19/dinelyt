# Dinelyt Backend

Dinelyt is a modern, high-performance API backend built with Rails 8, designed to power a premium dining experience.

## 🚀 Features

- **Rails 8.1 API Core**: Built on the latest Rails framework for maximum performance and modern conventions.
- **Stateless Authentication**: Powered by **Devise & JWT**, providing secure, token-based authentication for mobile and web clients.
- **PostgreSQL Database**: Robust data management for restaurants, users, and bookings.
- **Modern Infrastructure**:
  - **Solid Cache**: Database-backed caching for high availability.
  - **Solid Queue**: Integrated job processing for background tasks.
  - **Solid Cable**: Scalable WebSockets for real-time updates.
- **Containerized**: Fully Dockerized for consistent development and deployment environments.
- **Kamal Ready**: Automated deployment configuration for any cloud provider.

## 🛠 Tech Stack

- **Backend**: Ruby (Rails 8.1.2)
- **Database**: PostgreSQL
- **Security**: Devise, JWT, Brakeman, Bundler-Audit
- **Linting**: RuboCop (Rails Omakase)
- **Deployment**: Docker, Kamal, Thruster

## 🏁 Getting Started

### Prerequisites

- Ruby 3.4+
- PostgreSQL
- Docker (for containerized deployment)

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/Waseem-Akram19/dinelyt.git
   cd dinelyt
   ```

2. Install dependencies:
   ```bash
   bundle install
   ```

3. Setup the database:
   ```bash
   bin/rails db:prepare
   ```

4. Start the server:
   ```bash
   bin/rails s
   ```

## 🔒 Authentication

This API uses JWT for authentication. Include the `Authorization: Bearer <token>` header in your requests after logging in via `/users/sign_in`.
