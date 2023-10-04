abstract class Animal {}

abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

abstract mixin class Volador {
  void volar() => print('Estoy volando');
}

abstract mixin class Caminante {
  void caminar() => print('Estoy caminando');
}

abstract mixin class Nadador {
  void nadar() => print('Estoy nadando');
}

class Delfin extends Mamifero with Nadador {}

class Murcielago extends Mamifero with Volador, Caminante {}

class Gato extends Mamifero with Caminante {}

class Paloma extends Ave with Caminante, Volador {}

class Pato extends Ave with Volador, Caminante, Nadador {}

class Tiburon extends Pez with Nadador {}

class PezVolador extends Pez with Nadador, Volador {}

void main() {
  final flipper = Delfin();
  flipper.nadar();

  final batman = Murcielago();
  batman.caminar();
  batman.volar();

  final namor = Pato();
  namor.caminar();
  namor.nadar();
  namor.volar();
}

/*En la ultima versión de Dart, si vas a usar mixins la forma abtract class te arrojara un error, hay dos soluciones para cada caso.

1. Si no necesitas a futuro crear una instancia del mixin puedes crearlo como, Ejemplo:

// De esta manera no podremos crear una instancia // de Caminante

mixin Caminante {
void caminar() => print('Estoy caminando');
}

class Murcierlago extends Animal with Caminante, Volador {}

final batman = Murcielago();

batman.caminar(); // Estoy caminando

2. Si necesitas usar el mixin como clase, Ejemplo

// De esta manera podremos crear una instancia

mixin class Caminante {
void caminar() => print('Estoy caminando');
}

// y podremos usarla para otros propositos

final zombie = Caminante();
zombie.caminar(); // Estoy caminando */