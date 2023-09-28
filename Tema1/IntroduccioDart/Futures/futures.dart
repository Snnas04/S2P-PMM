// Futures són tasques asíncrones en Dart

//Fixau-vos que no especificam el tipus de Future que retorno
Future httpGet(String url) {
  return Future.delayed(new Duration(seconds: 3), () {
    return 'Fent petició a: $url';
  });
}

// Amb sintaxi lambda functions i el codi més ordenat
// Fixau-vos que a la funció anterior, la data és dinàmica però aquí forçam que sigui un String
Future<String> httpGet2(String url) async {
  return Future.delayed(new Duration(seconds: 1), () => 'Fent petició a: $url');
}

void main() {
  // Imaginem que volem fer una petició http
  print('Abans de la petició HTTP');
  httpGet('https://www.paucasesnovescifp.cat').then((data) {
    print(data);
  });
  print(httpGet2('efwef'));
  // Fixau-vos que a aquest mètode, data. ja ens apareixen totes les funcions del tipus String
  httpGet2('https://www.paucasesnovescifp.cat').then((data) {
    print(data.toUpperCase());
  });
  print('Després de la petició HTTP');
}
