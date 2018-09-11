var express = require('express');
var router = express.Router();

let connection = require('../config/connect');


let getData = (query) => {

  return new Promise((resolve,reject)=>{
    connection.query(query, (err , res)=>{
        if(err){
          console.log(`error occurred ${err}`)
          reject(err);
        }
        resolve(res);
        })
  })
}

/* GET listing. */
router.get('/', async (request, response, next)=> {

    console.log(`in /listings`);
    let query = `select * from hostels`;
    
    try{
        let data = await getData(query);
        response.json(data);

    }catch(err){
        response.json({"status":err.status,"msg":err.msg});
    }
    
   
})

router.get('/:id/detail', async (request,response,next)=>{

    let id = request.params.id;
    try{
        let query = `select * from description where id=${id}`;
        let data = await getData(query);

        query = `select * from warden where id= ${id}`;
        data =data.concat( await getData(query));
    
        response.json(data);
    }catch(err){
        response.json({"status":err.status,"msg":err.msg});
    }
    
    
});

module.exports = router;
