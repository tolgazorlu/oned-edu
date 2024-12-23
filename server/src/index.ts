import express, { Application } from "express";
require("dotenv").config();


const app: Application = express();

const connectToDB = require("./config/database");
connectToDB();

// * MIDDLEWARES
const cors = require("cors");
app.use(
    cors({
        origin: [
            "http://localhost:5173",
        ],
        credentials: true,
    }),
);

app.use(express.urlencoded({ extended: true }));
app.use(express.json());

// * ROUTES


const port: number = 8080;

app.listen(port, () => {
    console.log(`Port is running on ${port}`);
});
