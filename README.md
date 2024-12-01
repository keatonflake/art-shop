# Art Shop API

This project is a backend API for an art shop that allows users to create accounts and purchase art pieces of various sizes. The API connects to a PostgreSQL database and is tested using Jest. It includes features such as user authentication, managing art pieces, and managing orders.

## Overview

The Art Shop API allows users to:

- Sign up for an account and log in
- Browse art pieces available for purchase
- Place orders for art of different sizes
- Manage their user profile and orders

[Software Demo Video](https://www.youtube.com/watch?v=CodGiOGTKK4&ab_channel=SimplySaid))

## Relational Database

The database used in this project is PostgreSQL. It includes the following tables:

- **users**: Stores user information (username, email, password).
- **art_pieces**: Stores information about the art pieces available for purchase (title, artist, size, price).
- **orders**: Stores order details (user_id, art_piece_id, order_date, quantity).

# Development Environment

- "npm install"
- set up enviorment variable with external database url
- node serer.js to start the server
- "npm run test" to test the endopints

# Useful Websites

- [Postgres Docs](https://www.postgresql.org/docs/)
- [Jest test Docs](https://jestjs.io/)

# Future Work

- add all CRUD operations for entire database
- Add authorization middleware to protect certain routes (e.g., only admins can delete or update art pieces).
- Implement a frontend
