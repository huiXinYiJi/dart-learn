// 方法
// void 说明不需要返回值
void main(List args) {
  print(args); // []
  print(getPerson("张三", 18)); // name = 张三, age = 18
  printPerson("李四", 20);

  print(printPerson("李四", 20)); // null

  printEmp('张三'); // name = 张三, age = null, gender = null
  printEmp('张三', gender: '男', age: 20); // name = 李四, age = 20, gender = 男

  printEmp2('李四'); // name = 李四, age = null, gender = null
  printEmp2('李四', 18, '男'); // name = 李四, age = 18, gender = 男
}

// String getPerson(String name, int age) {
//   return "name = $name, age = $age";
// }
int gender = 1;
getPerson(name, age) => gender == 1? "name = $name, age = $age" : "Test"; 

// 返回类型  参数类型 可以省略
// void printPerson(String name, int age) {
printPerson(name, age) {
  print("name = $name, age = $age");
}

// 可选参数在固定参数后定义
printEmp(name, {int age = 30, String gender}) {
  print("name = $name, age = $age, gender = $gender");
}
printEmp2(name, [int age, String gender]) {
  print("name = $name, age = $age, gender = $gender");
}

// // 循环
// void main() {
//   var callbacks = [];
//   for (var i = 0; i < 2; i++) {
//     callbacks.add(() => print(i));
//   }
//   callbacks.forEach((c) => c());
// }

// // 条件表达式
// void main() {
//   int gender = 0;
//   String str = gender == 0 ? 'Male' : 'Female';
//   print(str); // Male

//   String a;
//   String b = 'Java';
//   String c = a ?? b; // 若a为null 则使用b; 若a不为空, 则为a
//   print(c); // Java
// }

// // 运算符
// void main() {
//   int a;
//   a ??= 10; // 如果a为空时，将10赋值给a，否则，a的值保持不变
//   print(a); // 10
// }

// // dynamic 动态类型
// void main() {
//   var a;
//   a = 10;
//   a = "Dart";

//   dynamic b = 20;
//   b = "Javascript";

//   var list = new List<dynamic>();
//   list.add(1);
//   list.add('dart');
//   list.add(true);
//   print(list); // [1, dart, true]
// }

// Map
// void main() {
//   var map1 = {"first": "dart", 1: true, true: "dart"};
//   print(map1);

//   print(map1["first"]); // dart
//   print(map1[true]); // dart
//   map1[1] = false; // {first: dart, 1: false, true: dart}
//   print(map1);

//   var map2 = const {1: "dart", 2: "java"};
//   // map2[1] = "python"; // error

//   var map3 = new Map(); // 构造

//   // 方法
//   // Keys values  isEmpty() isNotEmpty()
//   var map = {"first": "Dart", "second": "java", "third": "python"};
//   print(map.length); // 3
//   // map.isEmpty;
//   print(map.keys); // (first, second, third)
//   print(map.values); // (Dart, java, python)

//   print(map.containsKey("first")); // true
//   print(map.containsValue("sdfsdf")); // false

//   map.remove("third");
//   print(map); // {first: Dart, second: java}

//   map.forEach(f);
//   // key = first, value = Dart
//   // key = second, value = java

//   var list = ["1", "2", "3"];
//   print(list.asMap()); // {0: 1, 1: 2, 2: 3} List转为Map
// }


// void f(key, value) {
//   print("key = $key, value = $value");
// }

// // List
// void main() {
//   var list1 = [1, 2, 3, "dart", true];
//   print(list1);
//   print(list1[0]); // 1
//   list1[1] = 'hello';
//   print(list1); // [1, hello, 3, dart, true]

//   // 不可变的list
//   var list2 = const [1, 2, 3];
//   // list2[0] = 5; // error

//   var list3 = new List();
//   print(list3); // []

//   // 方法
//   // add() insert() remove() clear() forEach() map()
//   var list = ['hello', 'dart'];
//   print(list.length); // 2
//   list.add('new');
//   print(list); // [hello, dart, new]

//   list.insert(1, "java");
//   print(list); // [hello, java, dart, new]

//   list.remove("java");
//   print(list); // [hello, dart, new]

//   print(list.indexOf("dart")); // 找不到返回-1 找到返回下标

//   list.sort();
//   print(list); // [dart, hello, new]

//   print(list.sublist(1)); // [hello, new] 截取

//   list.forEach(print); // dart hello new

//   list.clear();
//   print(list); // []
// }

// // 布尔型
// void main() {
//   bool isTrue = true;
//   bool isFalse = false;

//   print("hello".isEmpty); // false
// }

// 字符串
// void main() {
//   String str1 = 'hello'; // ""
//   String str2 = '''hello
//      dart'''; // """
//   print(str2);

//   String str3 = 'hello \n dart';
//   print(str3);

//   // 原始raw字符串
//   String str4 = r'hello \n dart';
//   print(str4); // hello \n dart

//   String str5 = 'this is my language';
//   print(str5 + 'new');
//   print(str5 * 5); // 重复五次
//   print(str3 == str4);
//   print(str4[0]); // h

//   int a = 2;
//   int b = 1;
//   print('a + b = ${a + b}'); // a + b = 3
//   print('a = $a'); // a = 2

//   print(str5.length); // 19
//   print(str5.isEmpty); // false

//   print(str5.contains('t')); // true
//   print(str5.substring(0, 3)); // thi
//   print(str5.startsWith('a')); // false
//   print(str5.endsWith('ge')); // true

//   var list = str5.split(" ");
//   print(list); // [this, is, my, language]

//   print(str5.replaceAll("this", "that")); // that is my language
// }

// // main方法为程序入口
// void main() {
//   var number = 43;
//   printInteger(number);
// }

// printInteger(int aNumber) {
//   // print可在控制台打印
//   print('The number is $aNumber');
// }

// 变量/常量
// void main() {
//   var a;

//   a = 10;
//   print(a);

//   a = 'hello';
//   print(a);

//   var b = 20;
//   print(b);

//   final c = 30;

//   const d = 50;
// }

// 数值型
// void main() {
//   num a = 10;
//   a = 12.5;

//   int b = 20;
//   // b = 20.2; // error
  
//   double c = 10.2;
//   // c = 30;

//   print(b + c);
//   print(b - c);
//   print(b * c);
//   print(b / c);
//   print(b ~/ c); // 取整运算符
//   print(b % c); // 取余

//   print(0.0 / 0.0); // NAN

//   print(b.isEven); // true 奇数
//   print(b.isOdd); // false 偶数

//   int e = -100;
//   print(e.abs()); // 100 绝对值

//   double f = 10.5;
//   print(f.round()); // 11 上舍
//   print(f.floor()); // 10 下舍
//   print(f.ceil()); // 10

//   print(f.toInt()); // 10

//   print(b.toDouble()); // 20.0
// }