import 'dart:io';

//Cream la funcio amb els tres parametres.
mostrarHora(int  hora,  int minuts, int segons) {

  int dies = 0, anys = 0;

  //Comprovam les dades introduides segons son hores, minuts o segons.
  if (hora < 0) {
    print("Hora incorrecta.");
    exit(-1);
  } else if (minuts < 0) {
    print("Minuts incorrectes.");
    exit(-1);
  } else if (segons < 0) {
    print("Segons incorrectes.");
    exit(-1);
  }

  //Comprovam si hi ha mes minuts o segons que '60' i ho convertim amb les unitats corresponents.
  while(segons >= 60) {
    segons -= 60;
    minuts++;
  }

  while(minuts >= 60) {
    minuts -= 60;
    hora++;
  }

  //El mateix per si posam 24 hores == 1 dia.
  while(hora >= 24) {
    hora -= 24;
    dies++;
  }

  //El mateix per si posam 365 dies == 1 any.
  while(dies >= 365) {
    dies -= 365;
    anys++;
  }

  //Afegim un 0 davant en el cas de que nomes sigui introduit un nombre amb una xifra (Ex: 1 (01), 5 (05), 8 (08)).
  String horaBO = hora.toString().padLeft(2, "0");
  String minutsBO = minuts.toString().padLeft(2, "0");
  String segonsBO = segons.toString().padLeft(2, "0");

  //Imprimim el resultat amb el format corresponent.
  print("$anys anys - $dies dies - $horaBO:$minutsBO:$segonsBO");
}

void main() {
  //Executam la funcio 'mostrarHora'.
  mostrarHora(-112, 419, 1133);
}