/**
 * dart 中可以使用mixins实现类似于多继承功能;
 * 随着dart版本的变化，这里说明的是Dart2.x中使用mixins的条件
 *  1. 作为mixins的类只能继承Object 不能继承其他类
 *  2. 作为mixins的类不能有构造函数
 *  3. 一个类可以mixins多个mixins类
 *  4. mixins绝不是继承 ，也不是接口，而是一种全新的特性
 */
class A{
  printA(){
    print("A");
  }
}
class B{
  printB(){
    print("B");
  }
}
class C with A,B{
  
  
}
