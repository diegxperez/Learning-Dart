//Void no vamos a retornar nada
void main() {
  greetEveryone();
  print(greetEveryone());

  print('suma: ${addTwoNumbers(10, 20)}');

  print(greetPerson(name: 'Diego', message: 'Hi,'));
}

String greetEveryone() => 'Hello Everyone';

//Funcion inicial

//int addTwoNumbers ( int a, int b ) {
//  return a + b;
//}

// Creamos nombre d funcion / datos necesarios / funcion
int addTwoNumbers(int a, int b) => a + b;

// Se le agregan los [ ] para que sea opcional
// int addTwoNumbersOptional ( int a, [ int? b ] ) {
int addTwoNumbersOptional(int a, [int b = 0]) {
  //otra forma
  //  b ??= 0;

  // Si B tiene un valor queda asi, si no.
  // Si B es nulo se le asignara el 0
  //  b = b ?? 0;

  return a + b;
}

// La palabra reservada required obliga a proporcionar por lo menos el parametro
String greetPerson({required String name, String message = 'Hola'}) {
  return '$message Diego';
}
