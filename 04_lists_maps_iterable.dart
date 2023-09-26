void main(){
  
  final numbers = [1,2,3,4,5,5,5,6,7,8,9,9,10];
  
  
  print('List original $numbers');
  print('Length ${numbers.length}');
  print('Index 0: ${numbers[0]}');
  print('First ${ numbers.first }');
  print('Last ${ numbers.last }');
  print('Reversed ${ numbers.reversed }');
  
  
  final reversedNumber = numbers.reversed;
  
  // Pone la lista en reversa pero lo convierte en un Iterable
  print('Iterable $reversedNumber');
  
  //toList lo convierte de un iterable a una Lista
  print('Iterable ${ reversedNumber.toList() }');
  
  //toSet es como un listado solo que los valores son unicos
  // y no duplicados
  print('Set ${ reversedNumber.toSet() }');
  
  
  // Lo convierte primero a un listado Set y luego lo regresa a una lista
 // print('List original ${numbers.toSet().toList()}');
  
  final numbersGreaterThan5 = numbers.where( (int num) {
    return num > 5; //true
  }); 
  
  print('>5: $numbersGreaterThan5');
  print('>5: ${numbersGreaterThan5.toSet()}');
  
  
}