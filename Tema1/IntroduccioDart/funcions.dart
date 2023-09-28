// Les funcions es declaren molt semblant a C++
int max3(int a, int b, int c) {
  int r = a;
  if (b > r) r = b;
  if (c > r) r = c;
  return r;
}

// Les funcions poden no tenir tipus de retorn, en aquest cas retornen null
res() {
  print('Auqesta funció no fa res');
}

// PARAMETRES POSICIONALS
String transformaVerA(String s, bool mayus, int exclamacions) {
  if (mayus) {
    s = s.toUpperCase();
  }
  s += '!' * exclamacions;
  return s;
}

// Amb les claus, podem fer que els paràmetres siguin opcionals
// Des de null-safety, falta afegir '?' per especificar que pot prendre valor null
String transformaVerB(String s, [bool? mayus, int? exclamacions]) {
  if (mayus != null && mayus) {
    s = s.toUpperCase();
  }
  if (exclamacions != null) {
    s += '!' * exclamacions;
  }
  return s;
}

// Podem establir un valor per defecte pels paràmetres, aquí ja no es necessari les comprovacions
String transformaVerC(String s, [bool mayus = true, int exclamacions = 0]) {
  if (mayus) {
    s = s.toUpperCase();
  }
  s += '!' * exclamacions;
  return s;
}

// PARAMETRES NOMBRATS - Cal dir que també poden ser opcionals
String transformaVerD(String s, {bool? mayus, int? exclamacions}) {
  if (mayus != null && mayus) {
    s = s.toUpperCase();
  }
  if (exclamacions != null) {
    s += '!' * exclamacions;
  }
  return s;
}

String transformaVerE(String s, {bool mayus = true, int exclamacions = 0}) {
  if (mayus) {
    s = s.toUpperCase();
  }
  s += '!' * exclamacions;
  return s;
}

// Si posam el/els paràmetres més importants com a paràmetre nombrat,
// convé utilitzar la notació required. Aquesta el fa obligatori per a la utilització de la funció
// Ens serà d'especial utilitat als constructors!
String transformaVerF(
    {required String s, bool mayus = true, int exclamacions = 0}) {
  if (mayus) {
    s = s.toUpperCase();
  }
  s += '!' * exclamacions;
  return s;
}

// Les funcions i constructors amb paràmetres nombrats, ens serà d'especial utilitat a Flutter
// ja que per defecte hi sol haver molts paràmetres

// LES FUNCIONS SON VALORS (això prové de Javascript)
// Es permet compilar Dart a Javascript amb "dart2js" -> Compila el codi a JS

void mostra_llista(List<dynamic> llista) {
  llista.forEach(print);
}

var mostra_llista_copia = mostra_llista;

// Funcions anònimes (literal de funció)

var duplica = (double x) {
  return 2 * x;
};

// Dintre del forEach podem afegir la lògica que volguem
void mostra_llista_alternatiu(List<dynamic> llista) {
  llista.forEach((element) {
    print('Element-> $element');
  });
}

// Arrow Functions =>

var triple_A = (double x) {
  return 3 * x;
};
// La noptació sòls funciona amb una sòla linia (normalment un return)
var triple_B = (num x) => 3 * x;
// Ojo, si no posam tipus de la llista, asuemix que és dynamic
void mostra_llista_curta(List llista) => llista.forEach(print);

// (Funciones anidadas)
void mostra_llista_ad(List llista) {
  int i = 0;
  void mostraElement(element) => print('Element ${i++}: $element');

  llista.forEach(mostraElement);
}

// Repassam:
// 1. Les funcions són valors, per tant es poden retornar com a resultats d'altres funcions
// 2. Si estan "anidades" tenen accés a l'entorn de la funció que els conté

// Closures - Es queda una referencia a la funció exterior
nou_sumador(double dx) {
  return (double x) => x + dx;
}

void main() {
  print(max3(1, 2, 3));
  print(res());
  print(transformaVerA('Paraula', true, 3));
  print(transformaVerB('Paraula'));
  print(transformaVerB('Paraula', true));
  print(transformaVerB('Paraula', true, 5));
  print(transformaVerD('Paraula'));
  print(transformaVerD('Paraula', exclamacions: 3));
  print(transformaVerD('Paraula', exclamacions: 3, mayus: true));
  mostra_llista([1, null, 'hola']);
  mostra_llista_copia([1, null, 'hola']);
  print(duplica(5));
  mostra_llista_alternatiu([1, null, 'hola']);
  print(triple_A(5));
  print(triple_B(5));
  mostra_llista_curta([1, null, 'hola']);
  mostra_llista_ad([1, null, 'hola']);

  var suma5 = nou_sumador(5.0);
  var suma10 = nou_sumador(10.0);
  print(suma5);
  print(suma5(0.0));
  print(suma10(10.0));
}
