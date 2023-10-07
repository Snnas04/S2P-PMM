// Genera un programa que mostri tots els nombre primers fins a un nombre donat per paràmetre. Seguidament, a partir d’aquests nombres primers, mostra una llista de parelles de nombres primers la diferència entre els quals sigui de dos. 
//Exemple en el document de la Practica.

void main() {
  int maxNum = 44;

  generarPrimers(maxNum);
  print("\n=============\n");
  generarParellesPrimers(maxNum);
}

// imprimir numeros primers comprovant que son primers amb la funcio esPirmer
void generarPrimers(int maxNum) {
  for (int num = 2; num <= maxNum; num++) {
    if (esPrimer(num)) {
      print(num);
    }
  }
}

// imrpimir les parelles de numeros primers
void generarParellesPrimers(int maxNum) {
  for (int num = 2; num <= maxNum - 2; num++) {
    // comprobam que tenum dos numeros primers agafant un numero X, si X es primer li sumam 2 i si tambe e sprimer imprimim la parella
    if (esPrimer(num) && esPrimer(num + 2)) {
      print('$num i ${num + 2}');
    }
  }
}

// funcio per comprobar si un numero es primer
bool esPrimer(int num) {
  // el numero 1 o qualsevol numero mes petit no es primer
  if (num <= 1) {
    return false;
  }
  
  // comprobar que un numero NO es primer fent es modul d'quest
  for (int i = 2; i <= num / 2; i++) {
    if (num % i == 0) {
      return false;
    }
  }
  
  return true;
}
