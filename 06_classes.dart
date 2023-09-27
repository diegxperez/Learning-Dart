
//Void no vamos a retornar nada 
void main() {
  
  final Hero wolverine = Hero(name:'logan',power:'regeneracion');
  
  
  print( wolverine );
  print( 'Nombre del heroe: ${ wolverine.name }' );
  print( 'Poder del heroe: ${ wolverine.power }' );
  
}


class Hero {
  
  String name;
  String power;
  
  
  // La palabra this es opcional
  // Propiedad - Argumentos
  
  // ////1 Forma////
  // Inializacion Controlada 
  //  Hero(String pName, String pPower) 
  //    : name = pName,
  //      power = pPower;
  
  
  // Constructor de manera posicional
  // Hero (this.name, this.power);
  
  // Constructor argumentos por nombre
  Hero ({ 
    required this.name,
    this.power = 'sin poder'
    });
  
  @override
  // Indicar que esta sobreescribiendo con @override 
  // Sobreescribiendo el comportamiento nativo .toString()
  String toString() {
    return '$name - $power';
  }
    
}