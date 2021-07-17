
class Person {
  String name;
  int age;
  Person({this.name = "Rajesh Patil", this.age = 30});

  void display() {
    print("${this.name} is ${age} years old..!!");
  }
}

int addition(int age, String firstName, {lastName = "Patil"}) {
  print("${firstName ?? "flutter"} age is $age");
  age = age + 1;

  return age;
}

void main() {
  int a = 4;
  double b = 5.6;
  num c = 100.08;
  String firstName = "Rajesh";
  String lastName = "Patil";
  bool flag = true;
  var d = "Krishna";
  final city = "Bangalore";

  print(
      "values of above are : $a, $b, ${c.runtimeType}, ${firstName + lastName}, ${a + b}, ${city}");

  if (flag) {
    print("Rajes Patil");
  } else {
    print("F;lag not active");
  }

  switch (a) {
    case 1:
      print("Rajesh Patil");
      break;
    case 2:
      print("Krishna Patil");
      break;
    default:
      break;
  }

  for (int i = 0; i < 10; i++) {
    if (i == 5) {
      print("Hello World..!!");
      continue;
    }
    print("value of i is : ${i}");
  }

  while (a < 10) {
    print("While loop : $a");
    a++;
  }

  do {
    print("Do While loop: $a");
    a--;
  } while (a < 10);

  var list = ["Rajesh", "Krishna", "Patil", "Karthik", "Abdul"];
  list.forEach((element) {
    print("value os list is : $element");
  });

  var map = {"name": "Rajesh", "address": "Bangalore", "hobby": "Singing"};
  map.forEach((key, value) {
    print("key: $key, value: $value");
  });

  int age = 25;
  var incAge = addition(age, firstName);
  print("Incremented age is : $incAge");

  int x = 10;
  int y = 20;
  int z = 30;
  //null asignment operator
  x = y ?? z;
  //null aware operator
  x ??= y;
  print("value of x is: $x");

  Person person = Person(name: "Krishna Patil", age: 45);
  print("Name: ${person?.name}, Age: ${person.age}");
  person.display();
}


/*
int, double, num, string, bool
run time type
string concatination
.toString()
addition of same type
String interpolation ${a+b}
var -- dynamic variable 
final -- value will not going change during runtime, allication if memory is diffrent
const -- value is always constant will never chnage
conditional stmts -- if, elsif, switch, for while, do loops, continue, break
forEach()
map()
function methods
null assignmnet, null aware operator
class
private

https://dart.dev/
https://flutter.dev/

*/

  