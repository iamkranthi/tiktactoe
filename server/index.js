//^importing libraries
const express = require("express");
const http = require("http");
const mongoose = require("mongoose");

//^initializing libraries
const app = express();
const port = process.env.PORT || 3000;

//^creating server
var server = http.createServer(app);

var socketio = require("socket.io");
var io = socketio(server);

//^middle ware
app.use(express.json());
const DB =
  "mongodb+srv://kranthi:test123@cluster0.d2he7.mongodb.net/?retryWrites=true&w=majority";

io.on("connection", (socket) => {
  console.log("connected to socket io");
});
mongoose
  .connect(DB)
  .then(() => {
    console.log("connected to database");
  })
  .catch((e) => {
    console.log(e);
  });

//^server listneing
server.listen(port, "0.0.0.0", () => {
  console.log(`Server started at ${port}`);
});
