class Person {
  String _name; //_name 表示私有属性name 只能在该类中进行访问; 
                // 方法也是一样的；
  Person();
  void setName(_name){
    this._name = _name;
  }
  String getName (){
    return this._name;
  }
  get run{
      print("run getter ");
    return "run is running ";
  }
  set run (value){
    print(value);
  }
}
