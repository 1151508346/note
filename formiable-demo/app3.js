var express = require("express");
var path = require("path")
var app = express();
var router = require("./router")
/* 
art-template --处理方式
//处理静态文件的目录
// app.use(express.static(path.join(__dirname, 'www')))

//处理使用模板的后缀名
// app.engine("html",require("express-art-template"));

//处理渲染模板文件的路径
// app.set("views",path.join(__dirname,"views"));
*/


//处理静态文件的目录
app.use(express.static(path.join(__dirname, 'www')))

app.set('views',path.join(__dirname,"views"));
app.set('view engine', 'xtpl');
// app.use(function(req, res){
//     res.render('index');
// });
//挂在路由
app.use(router)

app.get("/xtplExtends/shop",function(req,res){
    res.render("xtplExtends/shop")
})
app.get("/xtplExtends",function(req,res){
    res.render("xtplExtends/index")
})
app.get('/', function(req, res){
  res.render("index");
});


// app.get("/expressExtends/shop",function(req,res){
//     res.render("expressExtends/shop.html")
// })

//只有当前文件被载入的时候才有值，否则为null
//可以用这一特性来判断当前文件是否被依赖与其他文件中
if(!module.parent){
    app.listen( process.env.PORT || 3000 ,function(err){
        if(!err){
            console.log("localhost:"+3000)
        }
    });
}