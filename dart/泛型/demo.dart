class PrintClass<T>{
  List list = new List<T>();
  void add(T value){
    this.list.add(value);
  }
  void printInfo(){
    for (var i = 0; i < this.list.length; i++) {
      print(this.list[i]);
    }
  }
}
void main() {
  PrintClass pc = new PrintClass<String>();
  pc.add("123");
  pc.add("456");
  pc.printInfo();
}