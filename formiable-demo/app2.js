var express = require("express");
var path = require("path")
var app = express();
var template = require("art-template");
var fs = require("fs");
app.use(express.static(path.join(__dirname, 'www')))

// app.engine("html",require("express-art-template"));

// app.set("views",path.join(__dirname,"views"));

app.get('/', function(req, res){
    fs.readFile("./views/index.html","utf-8",function(err,data){
            var result = template.render(data,{
                name:"name",
                age:"age",
                sex:"sex"
            });
            res.setHeader('Content-Type', 'text/html; charset=utf-8')
            res.end(result)
    })


//   res.render("index.html");
});

app.listen(3000,function(err){
    if(!err){
        console.log("localhost:3000")
    }
});