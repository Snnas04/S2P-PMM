/* Ben igual que la sintaxi ja vista en Java o altres llenguatges de programació
   * Tenim els diferents "casos" i també un per defecte en cas que no es compleixin
   * les condicions. Pensau a posar "Break" per a sortir del switch case
   * Sinò, ens donarà error.
   */
int string2dia(String nomDia) {
  // En Dart podem fer Switch de qualsevol variable, int, double, String...
  // Hi ha la funcionalitat de posar diferents casos en una sòla línia? Si, posant dos case seguits.

  int dia;
  switch (nomDia) {
    case 'dilluns':
      dia = 0;
      break;
    case 'dimarts':
      dia = 1;
      break;
    case 'dimecres':
      dia = 2;
      break;
    case 'dijous':
      dia = 3;
      break;
    case 'divendres':
      dia = 4;
      break;
    case 'dissabte':
      dia = 5;
      break;
    case 'diumenge':
      dia = 6;
      break;
    default:
      dia = -1;
      break;
  }
  return dia;
}

const diesSetmana = [
  'dilluns',
  'dimarts',
  'dimecres',
  'dijous',
  'divendres',
  'dissabte',
  'diumenge'
];

int string2dia2(String nomDia) => diesSetmana.indexOf(nomDia);

void main() {
  var nomDia = 'divendres';
  print(string2dia(nomDia));

  print(string2dia2(nomDia));
}
