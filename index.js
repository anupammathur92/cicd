import express from "express";
import { v4 as uuidv4 } from "uuid";
import dotenv from "dotenv";

dotenv.config();

const port = process.env.PORT || 3000;

const app = express();

app.get("/", (req, res) => {
  res.send({ msg: "pong", uuid: uuidv4() });
  return;
});

app.listen(port, () => {
  console.log(`UUID is ${uuidv4()}`);
  console.info(`Server is running on port ${port}`);
});
