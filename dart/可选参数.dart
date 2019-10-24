void main(){
  test("Jack",20);    
}           
    // [params..] 可变参数 sex = male <=default value        
test(String name,[int age,String sex="male"]){
  print("name: $name , age: $age , sex :$sex ");
}
