require("dotenv").config();

const express = require("express");
const app = express();
const router = require("./app/router");
const path = require("path");

const { addUsersTolocals, initSession } = require("./middlewares/initSession");

app.use(express.static("public"));
app.use(express.urlencoded({ extended: false }));

app.set("view engine", "ejs");
const viewsDirectory = path.join(__dirname, "app/views");
app.set("views", viewsDirectory);

app.use(initSession);
app.use(addUsersTolocals);

app.use(router);

app.listen(process.env.PORT, () =>
    console.log(`Listening on ${process.env.BASE_URL}:${process.env.PORT}`)
);
