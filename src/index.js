import express from "express";
import { v4 as uuidv4 } from "uuid";
import dotenv from "dotenv";

import { prisma } from "./db/index.js";

dotenv.config();

const app = express();

app.get("/", (req, res) => {
  res.send({ msg: "pong", uuid: uuidv4() });
  return;
});

app.get("/users", async (req, res) => {
  const users = await prisma.User.findMany();
  res.send({ msg: "success", users: users });
});

export default app;
