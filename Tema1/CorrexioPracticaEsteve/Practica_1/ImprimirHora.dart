import 'dart:io';

//Cream la funcio amb els tres parametres.
mostrarHora(int  hora,  int minuts, int segons) {

  //Comprovam les dades introduides segons son hores, minuts o segons.
  if (hora > 23 || hora < 0) {
    print("Hora incorrecta.");
    exit(-1);
  } else if (minuts > 59 || minuts < 0) {
    print("Minuts incorrectes.");
    exit(-1);
  } else if (segons > 59 || segons < 0) {
    print("Segons incorrectes.");
    exit(-1);
  }

    //Afegim un 0 davant en el cas de que nomes sigui introduit un nombre amb una xifra (Ex: 1 (01), 5 (05), 8 (08)).
    String horaBO = hora.toString().padLeft(2, "0");
    String minutsBO = minuts.toString().padLeft(2, "0");
    String segonsBO = segons.toString().padLeft(2, "0");

    //Imprimim el resultat amb el format corresponent.
    print("$horaBO:$minutsBO:$segonsBO");
}

void main() {
  //Executam la funcio 'mostrarHora'.
  mostrarHora(25, 439, 11);
}