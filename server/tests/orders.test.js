import request from "supertest";
import app from "../server"; // Import the app

describe("Orders Routes", () => {
  it("GET /api/orders - should return all users with their orders", async () => {
    const res = await request(app).get("/api/orders");

    expect(res.statusCode).toBe(200);
    expect(Array.isArray(res.body)).toBe(true);
    expect(res.body.length).toBeGreaterThanOrEqual(1);
  });
});
