import express from "express";
const router = express.Router();

import authRoute from "./auth/index.js";

router.use("/auth", authRoute);

// router.use("/art", artRoute);
// router.use("/order", orderRoute);

export default router;
