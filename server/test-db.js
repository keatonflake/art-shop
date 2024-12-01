import db from "./db/index.js";

db.pool.query("SELECT NOW()", (err, res) => {
  if (err) {
    console.error("Error connecting to the database", err);
  } else {
    console.log("Database connected:", res.rows[0]);
  }
  db.pool.end(); // Close the connection after testing
});
