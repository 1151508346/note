/**
 * dart 中没有interface关键字定义接口
 * 使用abstract 或者普通的class 来定义接口
 * 一般使用abstract 来定义接口
 * 通过implement来对接口中属性和方法进行复写
 * 当abstract 定义的类中让子类对其所有方法和属性进行复写时 使用implement来实现接口
 * 若该类中存在共享的方法时，使用extends来对抽象方法进行继承。
 * dart 中一个类可以实现多个接口
 * 
 * 
 */
abstract class   Db{
  add();
  delete();
  update();
  insert();
}
class mySql implements Db{
  @override
  add() {
    // TODO: implement add
    return null;
  }

  @override
  delete() {
    // TODO: implement delete
    return null;
  }

  @override
  insert() {
    // TODO: implement insert
    return null;
  }

  @override
  update() {
    // TODO: implement update
    return null;
  }
  
}