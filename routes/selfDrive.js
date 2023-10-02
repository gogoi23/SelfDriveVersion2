//Back End. User does not have any way to acess this code. 
var express = require('express');
var router = express.Router();

// This is where the code for self driving ai goes. It can send out output in the end
router.post('/', function(req, res, next) {
  
  res.send(req.body.parameter);
});

module.exports = router;