import 'dart:math';

void main() {
  int longitud = 21;

  Set<String> caracters = {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','0','1','2','3','4','5','6','7','8','9'};

  String contrasenya = "";
  for (int i = 0; i < longitud; i++) {
    contrasenya += caracters.elementAt(Random().nextInt(caracters.length));
  }

  print(contrasenya);
}
