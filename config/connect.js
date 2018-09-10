const mysql= require('mysql')

//mysql://b547f5d25e28d7:a2455dd1@eu-cdbr-west-02.cleardb.net/heroku_de5142b7a03809f?reconnect=true


let connection = mysql.createConnection({
    host: 'eu-cdbr-west-02.cleardb.net',
    user: 'b547f5d25e28d7',
    password: 'a2455dd1',
    database: 'heroku_de5142b7a03809f'
});

connection.connect((err)=>{
    console.log("Error occurred while connecting to db")
});

module.exports = connection;