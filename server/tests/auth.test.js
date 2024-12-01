import request from "supertest";
import app from "../server"; // Import the app

describe("Auth Routes", () => {
  const testUser = {
    username: "testuser",
    email: "test@example.com",
    password: "password123",
  };

  let userId;

  it("POST /auth/signup - should create a new user", async () => {
    const res = await request(app).post("/api/auth/signup").send(testUser);
    expect(res.statusCode).toBe(201);
    expect(res.body.message).toBe("User created");
    expect(res.body.user).toHaveProperty("user_id");

    userId = res.body.user.user_id;
  });

  it("POST /auth/login - should log in a user", async () => {
    const res = await request(app)
      .post("/api/auth/login")
      .send({ email: testUser.email, password: testUser.password });
    expect(res.statusCode).toBe(200);
    expect(res.body.message).toBe("Logged in successfully");
  });

  it("GET /auth/users - should return all users", async () => {
    const res = await request(app).get("/api/auth/users");
    expect(res.statusCode).toBe(200);
    expect(Array.isArray(res.body)).toBe(true);
    expect(res.body.length).toBeGreaterThanOrEqual(1);
  });

  it("DELETE /auth/delete-account/:id - should delete a user", async () => {
    expect(userId).toBeDefined();

    const res = await request(app).delete(`/api/auth/delete-account/${userId}`);
    expect(res.statusCode).toBe(200);
    expect(res.body.message).toBe("User deleted successfully");
  });
});
