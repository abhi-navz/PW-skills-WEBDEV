// const express = require("express");
import express from "express";
const app = express();

app.get("/", (req, res) => {
  res.send("<h1>Hello from express!</h1>");
});
app.get("/instagram", (req, res) => {
  res.send("<h1>@_abhinavz</h1>");
});
app.get("/twitter", (req, res) => {
  res.send("<h1>@_abhinavz</h1>");
});

export default app;
