// Classes abstractes (que no podrem inicialitzar)

// Declaren els mètodes que si o si han de tenir les classes que dependran d'aquesta,
// però encara no es sap quina serà la lògica

void main() {
  // Això donaria error ja que no es poden inicialitzar classes abstractes
  // final ironman = new Personatge('Tony Stark');
  final ironman = new Heroi('Tony Stark');
  ironman.malvat = false;
  print(ironman);

  final lex = new Heroi('Lex Luthor');
  lex.malvat = true;
  print(lex);
}

abstract class Personatge {
  String nom;
  bool? malvat;

  Personatge(this.nom);

  @override
  String toString() {
    return '$nom - $malvat';
  }
}

// Aquesta classe ja te implementats els mètodes que estan declarats a la classe abstracte
class Heroi extends Personatge {
  int valentia = 100;
  Heroi(String nom) : super(nom);
}

class Malvat extends Personatge {
  int malicia = 50;
  Malvat(String nom) : super(nom);
}
