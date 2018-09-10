var express = require('express');
var router = express.Router();

let connection = require('../config/connect');

/* GET users listing. */
router.get('/', function(request, response, next) {

  connection.connect((err)=>{
    if(err)
      return console.error('error: ' + err.message);

    let query = `select * from hostels`;

    connection.query(query,(err,res)=>{
      if(err)
        response.end(err.message);
        
      console.log("Response");

      response.send(res);
    })

  })
});

module.exports = router;
