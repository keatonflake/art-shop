import express from "express";
import pool from "../../db/index.js";

const router = express.Router();

router.get("/orders", async (req, res) => {
  try {
    const result = await pool.query(
      `SELECT users.username, users.email, orders.*
       FROM users
       LEFT JOIN orders ON users.user_id = orders.user_id`
    );
    res.json(result.rows);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

export default router;
