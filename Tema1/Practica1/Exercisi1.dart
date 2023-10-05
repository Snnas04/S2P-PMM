// Realitza un programa, que mitjançant una funció la qual rep per paràmetres tres valors corresponents a hores, minuts i segons en format int, imprimeixi la hora en format: 01:49:11

void main() {
  formatHores(240, 808, 75);
}

void formatHores(int hora, int min, int seg) {
  int diesPassats = 0;

  while (seg >= 60) {
    seg -= 60;
    min += 1;
  }
  
  while (min >= 60) {
    min -= 60;
    hora += 1;
  }
  
  while (hora >= 24) {
    hora -= 24;
    diesPassats++;
  }



  print("$diesPassats dies - $hora:$min:$seg");
}
