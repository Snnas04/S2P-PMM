void main() {
  // Llistes cotxes i motos
  List<Cotxes> llistesCotxes = List.filled(5, Cotxes.matricula(""));
  List<Moto> llistesMotos = List.filled(5, Moto.matricula(""));

  // Cotxes
  llistesCotxes[0] = Cotxes("1234ABC", "BMW", "M4 competition G82", false, "12345678A", 4823);
  llistesCotxes[1] = Cotxes("5678DEF", "BMW", "M2 G87", false, "987654321B", 9673);
  llistesCotxes[2] = Cotxes("9012HIJ", "Porsche", "992 Turbo S", false, "321098765C", 8732);
  llistesCotxes[3] = Cotxes("4567XYZ", "Audi", "RS3", false, "765432109D", 27264);
  llistesCotxes[4] = Cotxes("7890LMN", "BMW", "M3 G80 touring", false, "543210987E", 48743);

  // Motos
  llistesMotos[0] = Moto("1234ABC", "BMW", "S1000RR", false, "12345678A", 2184, 1000);
  llistesMotos[1] = Moto("5678DEF", "MV Augusta", "Brutale", false, "987654321B", 1827, 1000);
  llistesMotos[2] = Moto("9012HIJ", "Kawasaki", "H2", false, "321098765C", 3893, 1000);
  llistesMotos[3] = Moto("4567XYZ", "Yamaha", "R6", false, "765432109D", 2387, 600);
  llistesMotos[4] = Moto("7890LMN", "Ducati", "Panigale V4R", false, "543210987E", 1398, 1000);

  // Clients
  Client client1 = Client("12345678A", "Joan", "joan@gmail.com", "654321098", "4567890123456789");
  Client client2 = Client("987654321B", "Maria", "maria@gmail.com", "987654321", "1234567890123456");

  // Realitza el “lliurament” d’alguns cotxes i motos amb el mètode llogar() als clients creats.
  llistesCotxes[1].llogar();
  llistesCotxes[2].llogar();
  llistesMotos[0].llogar();
  llistesMotos[1].llogar();

  // Compta quants cotxes i motos hi llogats i digues quants n’hi ha en total.
  int numCotxesLlogats = llistesCotxes.where((cotxe) => cotxe.llogat).length;
  int numMotosLlogats = llistesMotos.where((moto) => moto.llogat).length;
  int numTotalVehicles = numCotxesLlogats + numMotosLlogats;
  print("Hi ha $numCotxesLlogats cotxes llogats");
  print("Hi ha $numMotosLlogats motos llogades");
  print("Hi ha $numTotalVehicles vehicles en total llogats");

  // Finalment, indica el cotxe que té més quilòmetres i la moto amb més quilòmetres. Mostra'ls per pantalla amb tota la seva informació (fés servir el mètode toString ()).
  // llistesCotxes.sort();
  // llistesMotos.sort();
  print("El cotxe amb més quilòmetres és: ${llistesCotxes[llistesCotxes.length - 1]}");
  print("La moto amb més quilòmetres és: ${llistesMotos[llistesMotos.length - 1]}");
}

class Client {
  // Atributs
  String _dni;
  String nom;
  String correu = '';
  String telefon = '';
  String targeta = '';
  
  // Constructor
  Client(this._dni, this.nom, this.correu, this.telefon, this.targeta);
  Client.dniNom(this._dni, this.nom);

  // Getters i Setters
  set setDni(String dni) => _dni = dni;
  String get getDni => _dni;

  set setNom(String nom) => this.nom = nom;
  String get getNom => nom;

  set setCorreu(String correu) => this.correu = correu;
  String get getCorreu => correu;

  set setTelefon(String telefon) => this.telefon = telefon;
  String get getTelefon => telefon;

  set setTargeta(String targeta) => this.targeta = targeta;
  String get getTargeta => targeta;

  // Mètodes
  void pagar() {
    print("Pagament realitzat");
  }
}

abstract class Vehicle {
  // Atributs
  String _matricula;
  String marca = '';
  String model = '';
  bool llogat = false;
  String dni = ''; // Qui ha llogat el vehicle
  int quilometratge = 0;

  // Constructor
  Vehicle(this._matricula, this.marca, this.model, this.llogat, this.dni, this.quilometratge);
  Vehicle.matricula(this._matricula);

  // Getters i Setters
  set setMatricula(String matricula) => _matricula = matricula;
  String get getMatricula => _matricula;

  set setMarca(String marca) => this.marca = marca;
  String get getMarca => marca;

  set setModel(String model) => this.model = model;
  String get getModel => model;

  set setLlogat(bool llogat) => this.llogat = llogat;
  bool get getLlogat => llogat;

  set setDni(String dni) => this.dni = dni;
  String get getDni => dni;

  set setQuilometratge(int quilometratge) => this.quilometratge = quilometratge;
  int get getQuilometratge => quilometratge;

  void llogar() {
    llogat = true;
    print("Vehicle llogat");
  }

  void retornar() {
    llogat = false;
    print("Vehicle retornat");
  }

  void estaLlogat() {
    if (llogat) {
      print("El vehicle està llogat");
    } else {
      print("El vehicle no està llogat");
    }
  }

  int compareTo(Object a) {
    if (a is Cotxes) {
      if (quilometratge > a.quilometratge) {
        return 1;
      } else if (quilometratge < a.quilometratge) {
        return -1;
      } else {
        return 0;
      }
    } else if (a is Moto) {
      if (quilometratge > a.quilometratge) {
        return 1;
      } else if (quilometratge < a.quilometratge) {
        return -1;
      } else {
        return 0;
      }
    } else {
      return 0;
    }
  }

  // toString
  @override
  String toString() {
    return 'Vehicle{Matricula: $_matricula, marca: $marca, model: $model, llogat: $llogat, dni: $dni, quilometratge: $quilometratge}';
  }
}

class Cotxes extends Vehicle {
  // Atributs
  String _matricula;
  String marca = '';
  String model = '';
  bool llogat = false;
  String dni = ''; // Qui ha llogat el cotxe
  int quilometratge = 0;

  // Constructor
  Cotxes(this._matricula, this.marca, this.model, this.llogat, this.dni, this.quilometratge) : super(_matricula, marca, model, llogat, dni, quilometratge);
  Cotxes.matricula(this._matricula) : super.matricula(_matricula);

  // Getters i Setters
  set setMatricula(String matricula) => _matricula = matricula;
  String get getMatricula => _matricula;

  set setMarca(String marca) => this.marca = marca;
  String get getMarca => marca;

  set setModel(String model) => this.model = model;
  String get getModel => model;

  set setLlogat(bool llogat) => this.llogat = llogat;
  bool get getLlogat => llogat;

  set setDni(String dni) => this.dni = dni;
  String get getDni => dni;

  set setQuilometratge(int quilometratge) => this.quilometratge = quilometratge;
  int get getQuilometratge => quilometratge;

  // toString
  @override
  String toString() {
    return 'Cotxe{Matricula: $_matricula, marca: $marca, model: $model, llogat: $llogat, dni: $dni, quilometratge: $quilometratge}';
  }
}

class Moto extends Vehicle {
  // Atributs
  String _matricula;
  String marca = '';
  String model = '';
  bool llogat = false;
  String dni = ''; // Qui ha llogat la moto
  int quilometratge = 0;
  int cilindrada = 0;

  // Constructor
  Moto(this._matricula, this.marca, this.model, this.llogat, this.dni, this.quilometratge, this.cilindrada) : super(_matricula, marca, model, llogat, dni, quilometratge);
  Moto.matricula(this._matricula) : super.matricula(_matricula);

  // Getters i Setters
  set setMatricula(String matricula) => _matricula = matricula;
  String get getMatricula => _matricula;

  set setMarca(String marca) => this.marca = marca;
  String get getMarca => marca;

  set setModel(String model) => this.model = model;
  String get getModel => model;

  set setLlogat(bool llogat) => this.llogat = llogat;
  bool get getLlogat => llogat;

  set setDni(String dni) => this.dni = dni;
  String get getDni => dni;

  set setQuilometratge(int quilometratge) => this.quilometratge = quilometratge;
  int get getQuilometratge => quilometratge;

  set setCilindrada(int cilindrada) => this.cilindrada = cilindrada;
  int get getCilindrada => cilindrada;

  // toString
  @override
  String toString() {
    return 'Moto{Matricula: $_matricula, marca: $marca, model: $model, llogat: $llogat, dni: $dni, quilometratge: $quilometratge, cilindrada: $cilindrada}';
  }
}
