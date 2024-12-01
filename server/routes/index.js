import express from "express";
const router = express.Router();

import authRoute from "./auth/index.js";
import orderRoute from "./order/index.js";

router.use("/auth", authRoute);

// router.use("/art", artRoute);
router.use("/", orderRoute);

export default router;
