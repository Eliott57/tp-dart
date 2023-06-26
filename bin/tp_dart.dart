import '../classes/User.dart';

String message = 'Hello, World !';

String hello = 'Hello';
String world = 'World';

void ex1_1() {
  print('Hello, World !');
}

void ex1_2() {
  print(message);
}

void ex1_3() {
  print('$hello, $world !');
}

void ex1_4() {
  print(hello.toUpperCase() + ', ' + world.toUpperCase() + ' !');
}

void ex1_5() {
  print(message.replaceAll(', World !', ''));
}

void ex1_6() {
  const String message = 'Hello, World !';
  print(message.length);
}

void ex1_7() {
  const String welcome = 'Hello, World !';

  List<String> welcomeList = welcome.toUpperCase().split('');

  const Map dict = {
    'E': '3',
    'L': '1',
    'O': '8'
  };

  print(welcomeList.map((letter) => dict[letter] != null ? dict[letter] : letter).join());
}

void ex1_8() {
  const String welcome = 'Hello, World !';

  final List<String> words = welcome.replaceAll(new RegExp(r'[^\w\s]+'),'').trim().split(' ');

  print(words);
}

void ex1_9() {
  String pwd = 'MONSUPERMOTDEPASSE';

  print(pwd.trim() == '' ? 'Mot de passe manquant' : 'Mot de passe fourni');
}

void ex1_10() {
  String email = 'john@doe.com';

  print(email.contains('@') && email.contains('.') ? 'Adresse mail valide' : 'Adresse mail invalide');
}

int price1 = 1000;
double price2 = 1000.5;

var sumResult = price1 + price2;

void ex2_1() {
  print('Prix 1 : $price1\nPrix 2 : $price2');
}

void ex2_2() {
  print(sumResult);
}

void ex2_3() {
  print(sumResult.runtimeType);
}

void ex2_4() {
  print(sumResult.toInt());
}

void ex2_5() {
  final String strSeven = "7";

  final int numSeven = int.parse(strSeven);

  print(numSeven);
}

List<String> planets = [
  'Terre',
  'Mars',
  'Mercure',
  'Saturne',
  'Vénus',
  'Neptune',
  'Uranus',
  'Jupiter',
];

void ex3_1() {
  planets.sort((b, a) => a.compareTo(b));

  print(planets);
}

void ex3_2() {
  for(final planet in planets)
    print(planet.toUpperCase());
}

void ex3_3() {
  var planetsIter = planets.iterator;

  while(planetsIter.moveNext())
    print(planetsIter.current[0]);
}

void ex3_4() {
  int i = 1;

  do{
    print(i.toString() + ' - ' + planets[i-1]);
    i++;
  }
  while(i <= planets.length);
}

void ex3_5() {
  var planetsIter = planets.iterator;

  const String vowels = 'aeiou';

  while(planetsIter.moveNext())
    if(vowels.contains(planetsIter.current[planetsIter.current.length-1]))
      print(planetsIter.current);
}

void ex3_6() {
  planets.add('Pluton');

  print(planets);
}

enum Kind { planet, star, satellite, asteroid, comet }

class Planet{
  final String name;
  final double distanceFromEarth;

  Planet(this.name, this.distanceFromEarth);
}

class SolarSystemElement{
  final String name;
  final Kind kind;

  SolarSystemElement(this.name, this.kind);
}

void ex3_7() {
  Planet mercure = Planet('Mercure', 91.69);
  Planet saturne = Planet('Saturne', 1275);
  Planet neptune = Planet('Neptune', 4351.40);
  Planet jupiter = Planet('Jupiter', 628.73);
  Planet mars = Planet('Mars', 78.34);
  Planet venus = Planet('Venus', 41.40);
  Planet uranus = Planet('Uranus', 2723.95);

  List<Planet> planets = [
    mercure,
    saturne,
    neptune,
    jupiter,
    mars,
    venus,
    uranus
  ];

  planets.sort((a, b) => a.distanceFromEarth.compareTo(b.distanceFromEarth));

  for(Planet planet in planets)
    print(planet.name);
}

Map apollo = {
  '07_1969': 'Apollo 11',
  '11_1969': 'Apollo 12',
  '02_1971': 'Apollo 14',
  '07_1971': 'Apollo 15',
  '04_1972': 'Apollo 16',
  '02_1972': 'Apollo 17'
};

void ex3_8(){
  print(apollo);
  print(apollo['07_1971']);
  print(apollo.keys);
  print(apollo.values);
}

void ex3_9(){
  apollo['07_1969'] = "Neil Armstrong + Buzz Aldrin";

  print(apollo['07_1969']);
}

void ex3_10(){
  SolarSystemElement sun = SolarSystemElement('sun', Kind.star);
  SolarSystemElement earth = SolarSystemElement('earth', Kind.planet);
  SolarSystemElement moon = SolarSystemElement('moon', Kind.satellite);
  SolarSystemElement pluton = SolarSystemElement('pluton', Kind.satellite);

  print(sun.name + ' : ' + sun.kind.toString().split('.').last);
  print(earth.name + ' : ' + earth.kind.toString().split('.').last);
  print(moon.name + ' : ' + moon.kind.toString().split('.').last);
  print(pluton.name + ' : ' + pluton.kind.toString().split('.').last);
}

//ex_4
String sayHello(String name){
  return 'Hello, $name !';
}

num sum(num number1, num number2){
  return number1 + number2;
}

num sumMany(List<num> numbers){
  num result = 0;

  for(final number in numbers)
    result += number;

  return result;
}

void sumAndPrint(num param1, num param2, [bool? shouldPrint]){
  num result = param1 + param2;

  if(shouldPrint == null || !shouldPrint)
    return;

  print('$param1 + $param2=$result');
}

num sumAndFormat(num num1, num num2, [String? ft]){
  num result = num1 + num2;

  if(ft == null)
    return result;

  return ft == 'int' ? result.toInt() : result.toDouble();
}

String strReverse(String str) => str.split('').reversed.join();

void ex4_6(){
  String hello = "Hello";

  String reversed = strReverse(hello);

  print(reversed);
}

void ex4_7(List<int> fibonacciList) {
  if (fibonacciList.length == 17){
    return;
  }else if(fibonacciList.length < 2){
    fibonacciList.add(fibonacciList.length);
  }else {
    int num1 = fibonacciList[fibonacciList.length - 1];
    int num2 = fibonacciList[fibonacciList.length - 2];

    fibonacciList.add(num1 + num2);
  }

  print(fibonacciList[fibonacciList.length - 1]);
  ex4_7(fibonacciList);
}

ex5(){
  final johndoe = User('John', 'Doe', 'john@doe.com');

  johndoe.password = 'monsupermdp';

  print(johndoe);

  johndoe.sayHello();

  print(johndoe.authenticate('monsupermdp2'));
  print(johndoe.authenticate('monsupermdp'));
}

void main(List<String> arguments) {
  print('Exercice 1 : \n');
  ex1_1();
  ex1_2();
  ex1_3();
  ex1_4();
  ex1_5();
  ex1_6();
  ex1_7();
  ex1_8();
  ex1_9();
  ex1_10();
  print('\n');

  print('Exercice 2 : \n');
  ex2_1();
  ex2_2();
  ex2_3();
  ex2_4();
  ex2_5();
  print('\n');

  print('Exercice 3 : \n');
  ex3_1();
  ex3_2();
  ex3_3();
  ex3_4();
  ex3_5();
  ex3_6();
  ex3_7();
  ex3_8();
  ex3_9();
  ex3_10();
  print('\n');

  print('Exercice 4 : \n');
  print(sayHello('Eliott'));
  print(sum(25.3, 78.9));
  print(sumMany([25.3, 78.9, 10]));
  sumAndPrint(25.3, 78.9);
  sumAndPrint(25.3, 78.9, false);
  sumAndPrint(25.3, 78.9, true);
  print(sumAndFormat(25.3, 78.9, 'int'));
  ex4_6();
  ex4_7([]);
  print('\n');

  print('Exercice 5 : \n');
  ex5();
  print('\n');
}
