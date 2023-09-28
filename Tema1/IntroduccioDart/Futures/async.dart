// Tasques asíncrones i com esperar el seu resultat

String getID(String id) {
  return 'ID de Jaume: $id';
}

// Retorna un future, per això ens donaria error
/*
String getNom(String id) async{
  return 'ID de Jaume: $id';
}

// i com ho podriem arreglar? Afegint que el resultar serà una "promesa"
*/
Future<String> getIDAsync(String id) async {
  return 'ID de Jaume: $id';
}

//void main() async{
void main() {

  // Imaginem que tenim un procés/programa que comença la seva execució
  print('Inici del programa');
  print(getID('1'));
  // Aquí imprimir el valor de la funció que és un Future<String>
  print(getIDAsync('2'));
  // Si el que vull és imprimir el valor que retorna la funció
  // És la mateixa sintaxi que
  getIDAsync('3').then((data) => print(data));
  // si només tenim un argument ho podem posar directament
  getIDAsync('4').then(print);
  // Si ens fixam, aquestes dues sentències s'executaran en segon pla, "quan es pugui"
  print(getID('1'));
  // Si afegim la sintaxi "await", obligarà a esperar fins que es realitzi
  // aquesta linia de codi i després continuarà.
  /* Prova de substituir la següent linia:
   * 
   * final nom = await getIDAsync('5');
   * 
   * A que dona error? Hem de fer algun canvi més? Async al main!!!
   */
  final nom = getIDAsync('5');
  print(nom);
  print(getID('1'));
  getIDAsync('6').then(print);
  // I si volem que una funció s'executi en segons pla
  // però que acabi abans de fí de programa?
  print('Fí del programa');
}
