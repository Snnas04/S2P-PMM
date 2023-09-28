// Classes abstractes (que no podrem inicialitzar)

// Declaren els mètodes que si o si han de tenir les classes que dependran d'aquesta,
// però encara no es sap quina serà la lògica

void main() {
  final me = Me(4);
  final moix = Moix(4);

  me.emetreSo();
  soAnimal(me);

  soAnimal(moix);
}

void soAnimal(Animal animal) {
  animal.emetreSo();
}

abstract class Animal {
  late int cames;

  Animal(int cames) {
    this.cames = cames;
  }

  void emetreSo();
}

// La classe de la qual depengui Animal, haurà d'implementar els mètodes i constructors
class Me extends Animal {
  Me(int cames) : super(cames);
  Me.senseCames() : super(0);

  void emetreSo() => print('Beeeee');
}

class Moix extends Animal {
  int? coa;

  Moix(int cames) : super(cames);

  void emetreSo() => print('Miauuu');
}
