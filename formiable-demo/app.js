var express = require("express");
var path = require("path")
var app = express();

var bodyParser=require('body-parser')

app.use(bodyParser.json())
app.use(bodyParser.urlencoded({extended:false}))
//处理静态文件的目录
app.use(express.static(path.join(__dirname, 'www')))
//处理使用模板的后缀名
app.engine("html",require("express-art-template"));
//处理渲染模板文件的路径
app.set("views",path.join(__dirname,"views"));
var routers = require("./router")
//挂在路由
app.use(routers)
app.get('/', function(req, res){
  res.render("index.html");

  //  res.jsonp({name:"aaa",age:"bbb"})
});


app.listen(3000,function(err){
    if(!err){
        console.log("localhost:3000")
    }
});