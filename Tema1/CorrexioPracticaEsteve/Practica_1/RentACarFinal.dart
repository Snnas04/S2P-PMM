//Classe 'Client'.
class Client {
  late String _DNI, nomComplet, correu;
  late int telefon, numTargeta;
  List<Vehicle> vehiclesLlogats = [];

  //Cream el constructor principal amb tots els atributs.
  Client(this._DNI, this.nomComplet, this.correu, this.telefon, this.numTargeta);

  //Cream el constructor amb el DNI i nom. La resta per defecte.
  Client.basic(String dni, String nomComplet) {
    this._DNI = dni;
    this.nomComplet = nomComplet;
    correu = '';
    telefon = 0;
    numTargeta = 0;
  }

  // @override
  // String toString() {
  //   return 'client{nomComplet: $nomComplet}';
  // }

  //Sobreescrivim el metode 'toString'.
  @override
  String toString() {
    return 'Client{_DNI: $_DNI, nomComplet: $nomComplet, correu: $correu, telefon: $telefon, numTargeta: $numTargeta}';
  }

  //GETTERS
  String get getDNI => _DNI;
  String get getNomComplet => nomComplet;
  String get getCorreu => correu;
  int get getTelefon => telefon;
  int get getNumTargeta => numTargeta;

  //SETTERS
  set setNomComplet(String nomComplet) => this.nomComplet = nomComplet;
  set setDNI(String DNI) {
    if (DNI.length == 9) {
      this._DNI = DNI;
    } else {
      print("El DNI ha de tenir 9 caracters.");
    }
  }
  set setCorreu(String correu) => this.correu = correu;
  set setTelefon(int telefon) => this.telefon = telefon;
  set setNumTargeta(int numTargeta) => this.numTargeta = numTargeta;


  //Funcio per llogar vehicles als clients.
  //Passam per paramtre el vehicle alquilat.
  void llogarVehicle(Vehicle vehicle) {

    //Miram el tipus de vehicle.
    String tipus;
    if(vehicle.esCotxe) {
      tipus = "Cotxe";
    } else {
      tipus = "Moto";
    }

    //Feim unes comprovacions per si el vehicle ja ha estat alquilat per
    // el mateix client o per un altre.
    if (!vehicle.estaLlogat() && !vehiclesLlogats.contains(vehicle)) {
      vehicle.llogar();
      vehicle.setDni = _DNI;
      vehiclesLlogats.add(vehicle);
      print('$nomComplet ha llogat el vehicle($tipus) amb matricula ${vehicle.matricula}');
    } else if(vehicle.estaLlogat() && vehiclesLlogats.contains(vehicle)) {
      print('$nomComplet ja ha llogat el vehicle($tipus) amb matricula ${vehicle.matricula}');
    } else {
      print('$nomComplet no pot llogar el vehicle($tipus) amb matricula ${vehicle.matricula} perque ja esta llogat per un altre client.');
    }
  }
}

//Classe abstracta 'Vehicle'.
abstract class Vehicle {
  late String dni, matricula, marca, model;
  late bool llogat, esCotxe;
  late double quilometratge;

  //Constructor per defecte amb parametres per defecte.
  Vehicle() {
    matricula = '';
    marca = '';
    model = '';
    llogat = false;
    dni = '';
    quilometratge = 0.0;
    esCotxe = false;
  }

  //Constructor amb la matricula. La resta per defecte.
  Vehicle.ambMatricula(String matricula) {
    this.matricula = matricula;
    marca = '';
    model = '';
    llogat = false;
    dni = '';
    quilometratge = 0.0;
    esCotxe = false;
  }

  //Constructor amb tots els atributs.
  Vehicle.ambTotsElsAtributs(String matricula, String marca, String model, bool llogat, String dni, double quilometratge, bool esCotxe) {
    this.matricula = matricula;
    this.marca = marca;
    this.model = model;
    this.llogat = llogat;
    this.dni = dni;
    this.quilometratge = quilometratge;
    this.esCotxe = esCotxe; // Configura si es un coche o no.
  }

  //GETTERS
  String get getMatricula => matricula;
  String get getMarca => marca;
  String get getModel => model;
  bool get getLlogat => llogat;
  String get getDni => dni;
  double get getQuilometratge => quilometratge;
  bool get getEsCotxe => esCotxe;

  //SETTERS
  set setMatricula(String matricula) => this.matricula = matricula;
  set setMarca(String marca) => this.marca = marca;
  set setModel(String model) => this.model = model;
  set setLlogat(bool llogat) => this.llogat = llogat;
  set setDni(String dni) => this.dni = dni;
  set setQuilometratge(double quilometratge) => this.quilometratge = quilometratge;
  set setEsCotxe(bool esCotxe) => this.esCotxe = esCotxe;

  //Metode 'estaLlogat()' per retornar l'estat de l'atribut 'llogat'.
  bool estaLlogat() {
    return llogat;
  }

  //Metode 'llogat()' per canviar l'atribut 'llogat' a true.
  void llogar() {
    llogat = true;
  }

  //Metode 'retornar()' per canviar l'atribut 'llogat' a false.
  void retornar() {
    llogat = false;
    dni = '';
    print("S'ha tornat el vehicle amb matricula $matricula");
  }

  //Metode compareTo(Vehicle other) per comparar el quilometratge DEL MATEIX VEHICLE.
  int compareTo(Vehicle other) {
    //COMPROVACIO de si es el mateix tipus de vehicle (Cotxe o Moto).
    if (this.runtimeType != other.runtimeType) {
      throw Exception('No es poden comparar vehicles de diferents tipus!');
    }
    //Retornam el resultat.
    return quilometratge.compareTo(other.quilometratge);
  }

  @override
  String toString() {
    return '{dni: $dni, matricula: $matricula, marca: $marca, model: $model, llogat: $llogat, esCotxe: $esCotxe, quilometratge: $quilometratge}';
  }
}

//Classe 'Cotxe' que s'exten de 'Vehicle'.
class Cotxe extends Vehicle {
  
  //Constructor per defecte.
  Cotxe() : super() {
    esCotxe = true;
  }

  //Constructor amb la matricula. La resta per defecte.
  Cotxe.ambMatricula(String matricula)
      : super.ambMatricula(matricula) {
    esCotxe = true;
  }

  //Constructor amb tots els atributs.
  Cotxe.ambTotsElsAtributs(String matricula, String marca, String model, bool llogat, String dni, double quilometratge)
      : super.ambTotsElsAtributs(matricula, marca, model, llogat, dni, quilometratge, true);

  @override
  String toString() {
    return 'Cotxe ' + super.toString();
  }
}

//Classe 'Moto' que s'exten de 'Vehicle'.
class Moto extends Vehicle {
  late double cilindrada;

  //Constructor per defecte.
  Moto() : super() {
    cilindrada = 0.0;
    esCotxe = false;
  }

  //Constructor amb la matricula. La resta per defecte.
  Moto.ambMatricula(String matricula)
      : super.ambMatricula(matricula) {
    esCotxe = false;
    cilindrada = 0.0;
  }

  //Constructor amb tots els atributs.
  Moto.ambTotsElsAtributs(String matricula, String marca, String model, bool llogat, String dni, double quilometratge, double cilindrada)
      : super.ambTotsElsAtributs(matricula, marca, model, llogat, dni, quilometratge, false) {
    this.cilindrada = cilindrada;
  }

  //GETTER cilindrada.
  double get getCilindrada => cilindrada;

  //SETTER cilindrada.
  set setCilindrada(double cilindrada) => this.cilindrada = cilindrada;

  //Metode 'toString()'.
  @override
  String toString() {
    return 'Moto ' + super.toString() + '{Cilindrada: $cilindrada}';
  }
}


void main() {
  //Creem dues llistes, una per a cotxes i una altra per a motos.
  List<Cotxe> cotxes = <Cotxe>[];
  List<Moto> motos = <Moto>[];

  //Creem e inicialitzem 5 cotxes i 5 motos i els afegim a les llistes corresponents.
  cotxes.add(Cotxe.ambMatricula('XYZ789'));
  cotxes.add(Cotxe.ambMatricula('DEF456'));
  cotxes.add(Cotxe.ambTotsElsAtributs('GHI789', 'Volkswagen', 'Golf', false, '', 45000.0));
  cotxes.add(Cotxe.ambTotsElsAtributs('JKL012', 'Toyota', 'Corolla', false, '', 55000.0));
  cotxes.add(Cotxe.ambTotsElsAtributs('JDI486', 'Renault', 'Clio', false, '', 75000.0));

  motos.add(Moto.ambMatricula('M54321'));
  motos.add(Moto.ambMatricula('M98765'));
  motos.add(Moto.ambTotsElsAtributs('M24680', 'Suzuki', 'GSX-R750', false, '', 9000.0, 750.0));
  motos.add(Moto.ambTotsElsAtributs('M13579', 'Ducati', 'Panigale V4', false, '', 11000.0, 1100.0));
  motos.add(Moto.ambTotsElsAtributs('M24681', 'Kawasaki', 'Ninja', false, '', 8000.0, 900.0));
  
  //Cream els clients.
  Client client1 = Client('12345678A', 'John Doe', 'john@example.com', 123456789, 987654321);
  Client client2 = Client('98765432B', 'Jane Smith', 'jane@example.com', 987654321, 123456789);
  Client client3 = Client.basic('75694867I', 'Alice Johnson');
  Client client4 = Client.basic('497009856E', 'Bob Brown');

  //Llogam alguns vehicles als clients.
  client1.llogarVehicle(cotxes[0]);
  client1.llogarVehicle(cotxes[0]); //Provam de tornar a llogar el mateix cotxe.
  client2.llogarVehicle(motos[4]);
  client2.llogarVehicle(cotxes[4]);
  client3.llogarVehicle(motos[3]);
  client4.llogarVehicle(cotxes[1]);
  client2.llogarVehicle(cotxes[1]); //Provam de llogar un cotxe que ja esta llogat.

  //Tornam alguns vehicles.
  client4.vehiclesLlogats[0].retornar();

  //Comptam els vehicles llogats.
  int cotxesLlogats = cotxes.where((cotxe) => cotxe.estaLlogat()).length;
  int motosLlogades = motos.where((moto) => moto.estaLlogat()).length;

  //Comptam el total de vehicles.
  int totalVehicles = cotxes.length + motos.length;

  //Busca el cotxe amb mes quilometres.
  Cotxe cotxeAmbMesQuilometres = cotxes.reduce((a, b) => a.compareTo(b) > 0 ? a : b);

  //Busca la moto amb mes quilometres.
  Moto motoAmbMesQuilometres = motos.reduce((a, b) => a.compareTo(b) > 0 ? a : b);

  //Mostram la informacio.
  print('------------------------------');
  print('Cotxes llogats: $cotxesLlogats');
  print('Motos llogades: $motosLlogades');
  print('Total de vehicles llogats: ${cotxesLlogats + motosLlogades}');
  print('Total de vehicles: $totalVehicles');
  print('Cotxe amb mes quilometres: ${cotxeAmbMesQuilometres.toString()}');
  print('Moto amb mes quilometres: ${motoAmbMesQuilometres.toString()}');
  print('------------------------------');
}
