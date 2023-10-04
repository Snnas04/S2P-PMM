// Creació de classes/Objectes

// import 'dart:math';

class Persona {
  // Aquesta seria la declaració de variables correcte, però hauriem d'utilitzar l'opció
  // NonNullable
  late String nom, cognoms;

  Persona(String nom, String cognoms) {
    this.nom = nom;
    this.cognoms = cognoms;
  }

  @override
  String toString() {
    return 'Nom: ${this.nom} Cognoms: ${this.cognoms}';
  }
}

// Declaració de classes amb la notació Syntactic Sugar

class PersonaAmbEdat {
  String? nom, cognoms;
  int? edat;

  // Constructor: Syntactic Sugar
  PersonaAmbEdat(this.nom, this.cognoms, this.edat);

  // Constructor Alternatiu: Named Constructor
  PersonaAmbEdat.senseEdat(String nom, String cognoms) {
    this.nom = nom;
    this.cognoms = cognoms;
    this.edat = 0;
  }

  // També podriem crear un objecte que tingui un NamedConstructor sense parametres

  PersonaAmbEdat.parametresNormbrats(
      {required String nom, required String cognoms, int edat = 0}) {
    this.nom = nom;
    this.cognoms = cognoms;
    this.edat = edat;
  }

  // Declaració de mètodes

  void esMajor(PersonaAmbEdat persona) {
    if (this.edat! > persona.edat!) {
      print('La persona ${this.nom} és major que ${persona.nom}');
    } else {
      print('La persona ${persona.nom} és major que ${this.nom}');
    }
  }
}

void main() {
  // Com cream un objecte de la classe que hem acabat de denifir?
  Persona personaConcreta = new Persona('Jaume', 'Camps');

  // Com accedim a la informació o mètodes d'aquesta classe?
  print('Nom: ${personaConcreta.nom} Cognoms: ${personaConcreta.cognoms}');
  // Modificar l'objecte realment això és un setter
  personaConcreta.cognoms = 'Camps Fornari';
  print(personaConcreta.toString());

  // Persona amb edat
  PersonaAmbEdat persona1 = new PersonaAmbEdat('Jaume', 'Camps', 20);
  print(
      'Nom: ${persona1.nom} Cognoms: ${persona1.cognoms} Edat: ${persona1.edat}');
  // Fixau-vos que el contructor és diferent
  PersonaAmbEdat persona2 = new PersonaAmbEdat.senseEdat('Toni', 'Ballador');
  print(
      'Nom: ${persona2.nom} Cognoms: ${persona2.cognoms} Edat: ${persona2.edat}');

  persona1.esMajor(persona2);

  // Aquest cop, quan cream una persona amb els paràmetres nombrats, ens demana
  // els paràmetres per nom, però li podem posar l'ordre que volguem
  // i fixau-vos que edat és opcional
  // PersonaAmbEdat persona3 =
  //     new PersonaAmbEdat.parametresNormbrats(nom: 'Jane', cognoms: 'Doe');
  // PersonaAmbEdat persona4 = new PersonaAmbEdat.parametresNormbrats(
  //     nom: 'Jane', cognoms: 'Doe', edat: 10);
}
