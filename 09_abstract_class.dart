void main() {
  final windPlant = WindPlant(initialEnergy: 100);
  final nuclearPlant = NuclearPlant(energyLeft: 1000);

  print('Wind: ${chargePhone(windPlant)}');
  print('Nuclear: ${chargePhone(nuclearPlant)}');
}

double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception('Not enough energy');
  }

  return plant.energyLeft - 10;
}

// Enumeracion (diferentes tipos de plantas)
enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {
  double energyLeft;
  final PlantType type; // nuclear, wind and water
  // No usamos String para evitar introducir otro tipo
  // Creamos el enum PlantType para llamar tipos especificos

  EnergyPlant({required this.energyLeft, required this.type});

  //Creamos un metodo que recibe un double
  void consumeEnergy(double amount);
}

// extends
// is more general

// Create WindPlant
class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
      // llamar al constructor del padre
      : super(energyLeft: initialEnergy, type: PlantType.wind);

  @override
  // Tiene que ser igual menos el pedido
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }
}

//Implements
// is specific

class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;

  @override
  final PlantType type = PlantType.nuclear;

  NuclearPlant({required this.energyLeft});

  @override
  // Tiene que ser igual menos el pedido
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}
