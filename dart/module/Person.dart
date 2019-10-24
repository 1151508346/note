  class Person{
    String _name;
    int _age;
    //静态方法
    static run (){
      print("static run function");
    }
    //默认构造函数的两种使用方式
    // Person(String name,int age){
    //   this.name = name;
    //   this.age = age;
    // }
    // Person(this.name,this.age); 
    
    //自定义构造函数 返回值是Person 实例
    // Person.construct(this.name,this.age);
    Person.construct(String name,int age){
      this._name = name;
      this._age = age;
      print(this._name +" --- "+ this._age.toString());
    }
    show (){
      print("name :"+this._name+" ; age : " + this._age.toString());
    }
  }