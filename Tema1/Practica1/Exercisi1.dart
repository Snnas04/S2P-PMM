// // Realitza un programa, que mitjançant una funció la qual rep per paràmetres tres valors corresponents a hores, minuts i segons en format int, imprimeixi la hora en format: 01:49:11

void main() {
  int hora = 20;
  int min = 34;
  int seg = 32;

  formatHores(hora, min, seg);
}

void formatHores(int hora, int min, int seg) {
  int diesPassats = 0;
  String horaFormatada;

  // Amb els tres bucles controlam que feim que si el valor introduit supera un valor valid
  // En el cas de sobrepassar aquest valor valid feim la diferencia i sumam un al parametre major, en el cas de lse hores anam sumant dies
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

  // donam un format a les hores
  // si els dies passats es 0, perque el valor d'hores es menor a 24 només imprimim les hores, els minuts i els segons
  // en el cas de que el valor de les hores sigui 24 o major afegim a devant quants de dies han passat
  if (diesPassats == 0) {
    horaFormatada = "${hora.toString().padLeft(2, '0')}:${min.toString().padLeft(2, '0')}:${seg.toString().padLeft(2, '0')}";
  } 
  else {
    horaFormatada = "${diesPassats.toString().padLeft(2, '0')} dies - ${hora.toString().padLeft(2, '0')}:${min.toString().padLeft(2, '0')}:${seg.toString().padLeft(2, '0')}";
  }

  print(horaFormatada);
}
