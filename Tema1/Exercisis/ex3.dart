/* ex palindomos:
  A la catalana banal, atácala
  A Mercedes, ese de crema
  A mi loca Colima
*/

void main() {
  String str = "Hello World";
  String strReverse = "";

  str = str.replaceAll(" ", "").toLowerCase();

  List<String> chars = str.split('');

  chars = chars.reversed.toList();

  strReverse = chars.join("");

  if (str == strReverse) {
    print('És un palíndormo');
  } else {
    print('NO és un palíndormo');
  }
}
