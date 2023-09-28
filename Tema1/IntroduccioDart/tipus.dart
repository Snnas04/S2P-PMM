// En primer lloc anem a crear un grapat variables

demoVariables() {
  // Les variables bàsiques en dart són aquestes a més de List, Map i Set
  // En Dart tot són objectes (classes)... i totes elles ja estan incorporades dins la llibreria
  // Les variables són referències als objectes, com punters, per això les variables poden tenir el valor de null
  // Les variables només es poden referir a objectes del mateix tipus
  int n = 3;
  // No hi ha float, és int o double
  double x = 0.05;
  bool b = false;
  String s1 = 'Uep';
  String s2 = "com anam?";
  String cometes = '"';
  String apostrof = "'";

  // Les variables poden tenir valor null, el null-safety (versió 2) ens obliga a tenir-ho en compte
  int? a;

  //Anem a fer els prints
  print(n);
  print(x);
  print(x.ceil());
  print(x.floor());
  print(b);
  print(s1);
  print(s2);
  print(cometes);
  print(apostrof);
  print(a);
}

demoVarDynamicNum() {
  // Si declaram el tipus a una variable sabem quin es, però també podem utilitzar var
  // var és una paraula reservada, quan ho utilitzam s'infereix el tipus
  //(del literal o del tipus de retorn, etc)
  var a = 7;
  //var a = 7.0;

  // aquesta variable no se li assigna cap tipus, pot ser qualsevol
  var b; // realment és dynamic
  print(b); // el valor serà null

  // Totes les variables tenen tipus, però hi ha un tipus especial
  // dynamic és un tipus especial que engloba qualsevol objecte
  dynamic c;

  // Haurem de comentar aquesta línia, ja que la var a, ja té tipus int i no double
  //a = 7.0;
  b = 5;
  b = 'a';
  c = 'paraula';
  c = 0.05;

  print(a);
  print(b);
  print(c);

  // hi ha un altre tipus anomenat num que és numèric
  // és el tipus base de double i int

  num x = 7;
  num y = c;

  print(x);
  print(y);
}

demoConversio() {
  // Convertim de num a String
  int a = 5;
  double b = 1.44;
  // En quasi tots els objectes hi ha un mètode toString
  String sa = a.toString();
  String sb = b.toString();
  String sc = 314.toString();
  print(sa);
  print(sb);
  print(sc);

  // Conversió de string a nombre
  String sd = '123';
  String se = '3.14';
  int d = int.parse(sd);
  double e = double.parse(se);
  //var e = double.parse(se);
  print(d);
  print(e);
}

demoInterpolacioStrings() {
  // Interpolació de Strings
  double euros = 45.70;
  // si sòls volem incrustar un valor
  String missatge1 = 'Tinc $euros €';
  // si volem posar una expressió
  String missatge2 = 'Si tingues 5€ més, tindria ${euros + 5} €';

  // la conversió anterior també es podria fer d'aquesta forma
  double b = 1.44;
  String sb = '$b';

  print(missatge1);
  print(missatge2);
  print(sb);
}

demoStringsLlargs() {
  // Literal de string seguits es concatenen
  var texte = 'Lorem ipsum dolor sit amet,'
      'consectetur adipiscing elit,'
      'sed do eiusmod tempor...';

  // Literal amb bots de línia
  var texteLlarg = """
    Lorem ipsum dolor sit amet, 
    consectetur adipiscing elit, 
    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
    """;
  // Concatenació de strings
  var s = 'James ' + 'Bond';

  print(texte);
  print(texteLlarg);
  print(s);
}

demoVariablesCondicions() {
  // En qualsevol condició Dart, només ens deixarà utilitzar variables bool
  // o bé dynamic (però de tipus bool)
  //int a = 0;
  //var a;
  //if (a) {}

  var s = '';
  if (s.isEmpty) {
    print('s està buit');
  }
}

demoLlistes() {
  // En dart List, Map i Set són genèrics, poden obtenir objectes de qualsevol tipus inclòs dynamic
  List<int> parells = [2, 4, 6, 8];
  List<dynamic> stuff = [2, true, 'uep', [], null];
  // stuff2 tindrà tipus List<dynamic>
  var stuff2 = [2, false, null];

  print(parells);
  print(stuff);
  print(stuff2);
  var imparells = [1, 3, 5];
  imparells.add(7);
  // Donaria error
  //imparells.add('9');
  print(imparells);
  print(stuff.length);

  // com especificar el tipus d'un literal
  var paraules = <String>[];
  paraules.add('Uep');
  // això donaria error
  //paraules.add(5);

  // Accedir a les caselles d'una llista, mo9lt similar als altres llenguatges de prog.
  print(parells[2]);
  print(imparells[imparells.length - 1]);
  print(stuff[2]);
}

demoCollectionIfFor() {
  bool llarga = true;
  var llista1 = [
    1,
    2,
    3,
    if (llarga) 4,
  ];
  /*
  var llista1 = [
    1,
    2,
    3
  ];
  if (llarga) {
    llista.add(4);
  }
  */
  print(llista1);

  int max = 10;

  var llista2 = [-1, for (int i = 0; i < max; i++) i, 10];
  /*
  var llista2 = [];
  for (int i = 0; i < max; i++) {
    llista2.add(i);
  }
  */
  print(llista2);
}

demoSets() {
  Set<int> parells = {2, 4, 6};
  Set<dynamic> stuff = {
    null,
    2,
    'Uep',
    [1]
  };
  // Conjunt buit
  // Realment això és un map ja que ambos utilitzen claus {}
  var map_buit = {};
  // Per forçar que sigui un conjunt utilitzar Set<tipus>
  print(parells);
  print(stuff);
  print(map_buit);

  parells.add(8);
  parells.addAll({10, 12});
  // També podem fer addAll a partir d'una llista
  parells.addAll([14, 16]);

  print(parells);
  print(parells.length);

  if (parells.contains(2)) {
    print('Si, conté el 2');
  }
}

demoMaps() {
  // En dart un Map ens permet associar un objecte a un altre
  // Serà especialment útil per a tractar json
  // Aquest map realment és un Map<String,dynamic>
  var M = {
    'nom': 'Toni',
    'cognom': 'Ballador',
    'edat': 70,
  };

  Map<int, String> nombres = {
    0: 'zero',
    1: 'u',
    2: 'dos',
    3: 'tres',
  };

  Map<dynamic, dynamic> stuff = {
    2: 'dos',
    'dos': 2,
    true: 'veritat',
    'fals': false,
  };

  print(M);
  print(nombres);
  print(stuff);

  print(nombres[2]);
  print(nombres[4]); //això donarà null

  nombres[5] = 'cinc';
  print(nombres[5]);

  // Longitud i també permet afegir tot un Map a un altre
  print(stuff.length);
  stuff.addAll(nombres);

  print(stuff);
}

demoRunes() {
  // Programació amb Runes (emoticones)
  // https://apps.timwhitlock.info/emoji/tables/unicode

  var cotxe = '\u{1F697} \u{1F699} \u{1F680}';
  print(cotxe);

  /*També podem declarar un objecte de tipus Runes que contindrà
   * diversos emoticones, però per a imprimir-ho per pantalla
   * necessitarem passar-ho a String amb fromCharCodes()
  */
  Runes icones = new Runes('\u{1F697} \u{1F699} \u{1F680}');

  String iconesString = new String.fromCharCodes(icones);
  print(iconesString);
}

void main() {
  demoVariables();
}
