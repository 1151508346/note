
class Person {
  String name;
  Person(this.name);
  show (){
    print(this.name);
  }
  run (){
    print("run");
  }
}
class Web extends Person{
  //通过使用super 子给父传参
  Web(String name):super(name){

  }
  @override
  show() {
    super.run();
    // TODO: implement show
    // return super.show(); //调用父类方法
  }
}
