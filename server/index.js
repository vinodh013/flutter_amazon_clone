//Imports from packages
const express = require("express");
const mongoose = require("mongoose");
const cors = require("cors");


//Imports From other files
const authRouter = require("./routes/auth");

//INIT
const PORT = 3000;
const app = express();
const DB = "mongodb+srv://vinodh:vinodh123@cluster0.uikkeza.mongodb.net/?retryWrites=true&w=majority"

//middleware
app.use(cors());
app.use(express.json());
app.use(authRouter);


//connections
mongoose
  .connect(DB)
  .then(() => {
    console.log("Connection Successful");
  })
  .catch((e) => {
    console.log(e);
  });

app.listen(PORT, "0.0.0.0", () => {
  console.log(`connected to port ${PORT}`);
});
