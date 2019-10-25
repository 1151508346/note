var path = require("path");
var fs = require("fs")
var express = require("express");
var formidable = require("formidable")
var router = express.Router();
router.get("/a",function(req,res){
    res.render("a.html");
})
router.get("/b",function(req,res){
    res.render("b.html")
})
// router.post("/uploaded",function(req,res){
//     // console.log(req.body)
//     const form = new formidable.IncomingForm()
//     form.uploadDir = path.join(__dirname, 'www/uploaded');
//     form.keepExtensions = true; //保留原始文件扩展名
//     form.parse(req, (err, fields, files) => {
//         if (err) {
//           throw err;
//         }  
//         console.log(path.basename(files.myfile.path))
//         var oldpath = __dirname+"\\WWW\\uploaded\\"+path.basename(files.myfile.path);
//         var newpath = __dirname+'\\WWW\\uploaded\\'+ files.myfile.name;
//         fs.rename(oldpath,newpath,function (err) {
//             if(err){
//                 throw  Error("改名失败");
//             }
//         });  
//         res.send("success")      
//     })
//     // res.redirect("/");
// })

router.post("/uploaded",function(req,res){
    const form = new formidable.IncomingForm()
        form.uploadDir = path.join(__dirname, 'www/uploaded');
        form.keepExtensions = true; //保留原始文件扩展名
        //fields 表示form表单中其他的字段
        //files 上传文件相关信息
        form.parse(req, (err, fields, files) => {
            if (err) {
                res.send("failure")
                throw err;
            }   
            var oldpath = __dirname+"\\WWW\\uploaded\\"+path.basename(files.myfile.path);
            var newpath = __dirname+'\\WWW\\uploaded\\'+ files.myfile.name;
            fs.rename(oldpath,newpath,function (err) {
                if(err){
                    throw  Error("改名失败");
                }
            }); 
            res.send("success")
        })
})

router.get("/post",function(req,res){
    res.render("post.html")
})
router.post("/post",function(req,res){
        console.log((req.body.username))      
})
router.get("/uploaded",function(req,res){
    res.render("uploaded.html")
})
router.get("/expressExtends",function(req,res){
    res.render("expressExtends/index.html")
})
router.get("/expressExtends/shop",function(req,res){
    res.render("expressExtends/shop.html")
})
module.exports = router;