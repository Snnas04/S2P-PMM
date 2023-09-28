void main() {}

demoCondicionals() {
  var nombre = 2;

  if (nombre == 2) {
    print('Es nombre es 2');
  }

  if (nombre > 5) {
    print('El nombre $nombre es major que 5');
  } else if (nombre < 5) {
    print('El nombre $nombre es menor que 5');
  } else {
    print('El nombre $nombre es 5');
  }

  // "?" es la condicio de true i ":" es la condicio de false
  nombre == 2 ? print('Es nombre es 2') : print('Es nombre no es 2');
}

demoBucleFor() {
  var animals = ['ca', 'moix', 'elefant', 'tigre'];

  for (var i = 0; i < animals.length; i++) {
    print(animals[i]);
  }

  animals.forEach((element) => print(element));

  animals.forEach((def) {
    print(def);
  });

  animals.forEach(print);

  for (var i in animals) {
    print(i);
  }
}

demoSwithc() {
  int dia;
  switch ('nomDia') {
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

demoWhile(var alumnes) {
  bool trobat = false;
  var i = 0;

  // Bucle while comprovant la condició des del principi
  while (!trobat) {
    if (alumnes[i] == 'Pep') {
      trobat = true;
      print('Hem trobat en Pep!');
    } else {
      print('L\'alumne ${alumnes[i]} no és en Pep, seguim cercant.');
    }
    i++;
  }
}

demoDoWhile(var alumnes) {
  // Bucle do-While, en que realitzam una acció abans de fer la comprovació
  print('-------------DoWhile-------------');
  // Inicialitzam variables

  int i = 0;
  bool trobat = false;
  do {
    if (alumnes[i] == 'Pep') {
      trobat = true;
      print('Hem trobat en Pep!');
    } else {
      print('L\'alumne ${alumnes[i]} no és en Pep, seguim cercant.');
    }
    i++;
  } while (!trobat);
}
