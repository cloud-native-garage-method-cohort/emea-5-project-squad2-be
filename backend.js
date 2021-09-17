const express = require('express');
var mysql = require('mysql2'); 
var con = mysql.createConnection({
    //host: process.env.MYSQL_HOST,
    host: "localhost",
    user: process.env.MYSQL_USER,
    password: process.env.MYSQL_PASSWORD
  });
  
con.connect(function(err) {
if (err) throw err;
console.log("Connected!");
});
const app = express();
const port = 3000;


app.get('/city', function(req, res) {
    con.query('SELECT Name, Nation from application.City;', (err, result) => {
        if (err) {
            return res.status(405).jsonp({
                error: err
            });
        }
        return res.status(200).jsonp({
            data: result
        });

    });
});


// /city_by_nation?nation
app.get('/city_by_nation', function(req, res) {
    con.query('SELECT Name from application.City where Nation=?',[req.query.nation],  (err, result) => {
        if (err) {
            return res.status(405).jsonp({
                error: err
            });
        }

        return res.status(200).jsonp({
            data: result
        });

    });
});

app.post('/comment',function(req,res){
    var city_name = req.body.city_name;
    var description = req.body.description;
    con.query('INSERT into application.Comment (Name,description) VALUES (?,?)',[city_name,description], (err, result) => {
        if (err) {
            return res.status(405).jsonp({
                error: err
            });
        }
        return res.status(200)
    });
});
app.get('/comments', function(req, res) {
    con.query('SELECT Name,description from application.Comment', (err, result) => {
        if (err) {
            return res.status(405).jsonp({
                error: err
            });
        }

        return res.status(200).jsonp({
            data: result
        });

    });
});

app.listen(port, () => console.log(`Backend rest api listening on port ${port}!`))