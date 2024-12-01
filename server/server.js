import express from "express";
import dotenv from "dotenv";
import cors from "cors";
import routes from "./routes/index.js";
import bodyParser from "body-parser";

dotenv.config();

const app = express();
const isDevelopment = process.env.NODE_ENV === "development";

// CORS configuration
const allowedOrigin = isDevelopment
  ? "http://localhost:8080"
  : "https://your-production-url.com";

console.log("CORS Origin:", allowedOrigin);

app.use(
  cors({
    origin: allowedOrigin,
  })
);

app.use(express.json());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

// Routes
app.use("/api", routes);

const port = 8080;

// Start server unless in test mode
if (process.env.NODE_ENV !== "test") {
  app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
  });
}

export default app; // Export the app for testing
