const mongoose = require("mongoose");

const userSchema = mongoose.Schema({
  name: {
    trim: true,
    require: true,
    type: String,
  },
  email: {
    trim: true,
    require: true,
    type: String,
    validate: {
      validator: (value) => {
        const re = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
        return value.match(re)
      },
      message: 'Please enter a valid email address'
    },
  },
  password: {
    require: true,
    type: String,

  },
  address: {
    type: String,
    default: '',
  },
  type:{
    type: String,
    default: 'user',
  },
  //cart

});


const User = mongoose.model('User', userSchema);

module.exports = User;
