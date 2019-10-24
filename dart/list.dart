void main(){
  test2(); 
}
void test1(){
  int a = 10;
  a??=20; // a没有赋值的时候将20赋值给a 反之不赋值 
  // print(a);
  var b;
  var c = b ?? 11; //当b没有赋值的时候  赋值11给c
  // print(c);
  String str = "123";
  // print(double.parse(str));
  int myNum = 456;
  String result = myNum.toString();
  var myNaN = 0/0;
  // print(myNaN.isNaN);

  var list = ["abc","ccc"];
  var s = list.toSet();
  // print(s is Set);

  var per = {
    "name":"aaa",
    "age":20
  };  
  // print(per is Map);

  // print(per.keys.toList());
  // per["sex"] = "female";
  // print(per);
  // print(per.containsKey("name"));

  // var lis = [1,2,3,65];
  // for (var item in lis) {
  //   print(item);
  // }
  // lis.forEach((value){
  // print(value);
  // }); 

  


  









  // test();
  // test2();
}
// class A{
//   var name = 'sdasd';
// }
test(){
    List list = [4,5,7,8,9];
    var result  = list.any((value){ //只要有一个满足结果就返回true
      return value==6;
    });
    // print(result);
    var result1 = list.every((value){ //所有的项必须满足条件才返回true
      return value>5;
    });
    print(result1);
}

test2(){
  final a  = null;
  const b  = 20;
  var per = {"name":"aaa","age":20};

   per.forEach((key,value){
     print(value);
    });
  // print(result); 
  // print( new A().name);

}









