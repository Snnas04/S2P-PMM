import 'dart:math';

//Cream una funcio per mostrar els nombres primers
// menors que el nombre introduit per parametre i
// tambe retornam una llista amb aquests.
List<int> llista_n_primers(int n) {
  var primers = <int>[];

  int intValue = 2;

  print("NORMAL: ");

  //Bucle que no acaba fins que 'intValue' es menor o igual que 'n'.
  while (intValue <= n) {

    var limite = sqrt(intValue);
    var esPrimo = true;

    //Bucle per comprovar si esPrimo.
    // En el cas que no, 'esPrimo' collira el valor bool 'false'.
    for (var i = 2; i <= limite; i++) {
      if (intValue % i == 0) {
        esPrimo = false;
      }
    }

    //Si es primo (true), l'afegim a la llista 'primers' e imprimim el valor.
    if (esPrimo) {
      primers.add(intValue);
      print(intValue);
    }

    //Anam sumant cada vegada 1 al nombre evaluat.
    intValue++;
  }

  //Retornam la llista 'primers'.
  return primers;
}

//Funcio per mostrar les parelles que hi pot haver dins la
// llista passada per parametre.
mostrarParelles(List<dynamic> primers) {
  print("\nPARELLES: ");

  //Bucle que itera sobre cada element de la llista i
  // comprova si pot fer una parella amb el seguent.
  for (int i = 0; i < primers.length - 1; i++) {
    if (primers[i + 1] - primers[i] == 2) {
      print("${primers[i]} i ${primers[i + 1]}");
    }
  }
}


void main() {
  //Cridam la funcio 'llista_n_primers' i guardam la llista retornada en la variable 'primers'.
  var primers = llista_n_primers(144);

  //Mostram les parelles de la llista indicada per parametre.
  mostrarParelles(primers);
}