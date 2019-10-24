class Person{

  String name;
  int age;
  String getName(){
   
    return  this.name;
  }
  void setName(name){
    this.name = name;
  }
  int getAge (){
    return this.age;
  }
  void setAge(age){
    this.age = age;
  }
  
}









void main(){
    printName("Jack");
}
void printName(String name){
  print(name);
}