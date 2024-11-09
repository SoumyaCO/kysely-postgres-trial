import express, { Express, Request, Response } from "express";
import { db } from "./conn/postgres";
import { drizzle } from "drizzle-orm/node-postgres";
import { eq } from "drizzle-orm";
import { usersTable } from "./db/schema";

const app: Express = express();

app.post("/books", (_req: Request, res: Response) => {
  res.status(200).send("hey");
});

const PORT: string = "6969";

app.listen(PORT, () => console.log(`Server Started at port ${PORT}`));
