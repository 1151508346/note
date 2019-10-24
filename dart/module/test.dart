import './Person.dart';
void main(){
  Person  p = new Person.construct("Jack",20);
  p.show();
  print(Person.run());
  print(Person.construct("cc", 123));
  
}
