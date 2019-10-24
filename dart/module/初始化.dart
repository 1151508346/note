class Rect{
  int width;
  int height;
  Rect():width=20,height=20{
    print("${this.width},${this.height}");
  }
}

void main(List<String> args) {
Rect r = new Rect();
  /** Dart 对象操作符
   * ?   条件运算符 (了解)
   * as 类型转换
   * is 类型判断
   * .. 级联操作
   * 
   */
  r?.height; //当r为空时 不会访问height 反之会访问的

  var r1 ;
  r1 = "";
  r1 = new Rect();
  // print(r1.height);
  
  // print((r1 as Rect)..height..width);
  r1..width = 12
    ..height = 20;
    print(r1.width);
}