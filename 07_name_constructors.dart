void main(){
  
  
  final Map<String,dynamic> rawJson = {
    'name' : 'Tony Stark',
    'power' : 'Money',
    'isAlive' : true
  };
  
  final Hero ironman = Hero.fromJson( rawJson );
    // con ?? Evaluamos si es nulo, si no se le asigna el False
    //isAlive: rawJson['isAlive2'] ?? false,
    //power: 'Money',
   // name: 'Tony Stark'
    
 // );
  
  
  //final Hero ironman = Hero (
    
  //  isAlive: false,
  //  power: 'Money',
  //  name: 'Tony Stark'
    
  //);
  

  print(ironman);
  //print('Nombre: ${ironman.name}, SuperPoder: ${ironman.power}, Esta vivo? ${ironman.isAlive}');
  
}


class Hero {
  
  String name;
  String power;
  bool isAlive;
  
  Hero ({
    // Constructor argumentos por nombre
    required this.name,
    required this.power,
    required this.isAlive
  });
  
  
  // construcctor con nombre
  Hero.fromJson( Map<String, dynamic> json  ) 
    : name = json['name'] ?? 'No name found',
      power = json['power'] ?? 'No power found',
      isAlive = json['isAlive'] ?? 'No isAlive found'
  ;
  
  
  @override
  String toString () {
    // Operador ternario isAlive true? imprimir YES si no imprimir Nope
    return '$name, $power, isAlive: ${ isAlive ? 'YES!': 'Nope'}';
  }
}