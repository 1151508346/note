var fs = require("fs");
var href = "./demo.txt"
if(fs.existsSync(href)){
    console.log("file exits")

    fs.unlink(href,function(er){
        if(!er){
            console.log("文件删除成功")
        }
    });
}else{
    console.log("not file exits")
}