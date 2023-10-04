void main() {
  String str = 'El meu nom es Marc';

  String divCadena(String str) {
    List<String> paraules = str.split(" ");

    paraules = paraules.reversed.toList();

    return paraules.join(" ");
  }

  String output = divCadena(str);

  print(output);
}
