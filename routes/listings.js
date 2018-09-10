var express = require('express');
var router = express.Router();

let connection = require('../config/connect');


let getData = (query) => {

  connection.query(query, (err , res)=>{
    if(err){
      console.log(`error occurred ${err}`)
      return err.message;
    }
    return res;
    })
}

/* GET listing. */
router.get('/', async (request, response, next)=> {


    let query = `select * from hostels`;
    let data = await getData(query);
    response.json(data);
   
})

router.get('/:id/detail', async (request,response,next)=>{

    let id = request.params.id;

    let query = `select * from description where id=${id}`;
    let data = await getData(query);

    query = `select * from wardens where id= ${id}`;
    
    data =data.concat( await getData(query));
    
    response.json(data);
    
});

module.exports = router;
