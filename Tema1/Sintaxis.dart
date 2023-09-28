void main() {

}

demoVariables() {
  int n = 3;
  double x = 0.05;
  bool b = false;
  String str1 = "dobles";
  String str2 = 'simples';
  String cometes = '"';
  String apostrof = "'";
  int? n1;
  
  print(n);
  print(n1);
  print(x);
  print(x.ceil());
  print(x.floor());
  print(b);
  print(str1);
  print(str2);
  print(cometes);
  print(apostrof);
}

demoVariablesDinamiques() {
  var a = 7;
  
  var b;
  
  double b1 = 1.1;
  
  dynamic c;
  
  b = 7;
  print(b + b1);
  
  b = 'str';
  
  print(b);
  
  c = "str";
  c = 7.2;
  
  num x = 7;
  num y = c;
  
  print(x);
  print(y);
  
  y = 5;
  print(y);
}

demoConvercuins() {
    int a = 7;
  double b = 7.0;
  
  String strA = a.toString();
  String strB = b.toString();
  String strC = 3.14.toString();
  
  int aa = int.parse(strA);
  double bb = double.parse(strB);
  
  print(aa);
  print(bb);
  print(strC);
}

demoInterpolacio() {
    double euros = 45.7;
  String missatge1 = 'Tinc $euros €';
  
  print(missatge1);
  
  String missatge2 = 'Tinc 10 € més, en total: ${euros + 10} €';
  print(missatge2);
}

demoTextes() {
    var texte = 'Lorem ipsum ...'
    'segona linea'
    'tercera linea';
  
  var texteLlarg = """Lorem ipsum ...
segona linea
tercera linea""";
  
  var texteAmbN = 'hola \nadeu';
  
  print(texte);
  print(texteLlarg);
  print(texteAmbN);
  
  print(texte + texteLlarg);
  print('primer ' + 'segon');
}

demoBoolCond() {
    var s = '';
  // var s = 'a';
  
  if (s.isEmpty) {
    print('Esta buit');
  }
  else {
    print(s);
  }
}

demoConjunts() { 
  List<int> parells = [2,4,6];
  List<dynamic> stuff = [2, true, 'uep!', [], null];
  
  var stuff2 = [2, false, null];
  
  print(parells);
  print(stuff);
  print(stuff2);
  
  var imparells = [1,3,5];
  
  imparells.add(7);
  print(imparells);
  print(stuff.length);
  
  var paraules = <String>['bon dia', 'hola'];
  paraules.add('bones tardes');
  
  print(stuff[2]);
  print(stuff[stuff.length-4]);
  
  int max = 10;
  var llistaFor = [-1, for (int i = 0; i < max; i++) i];
  
  print(llistaFor);
}

demoSets() {
    Set<int> parells = {2, 4, 6};
  
  print(parells);
  
  Set<dynamic> stuff = {null, 2, 'uep', [1, 2]};
  
  print(stuff);
  
  var mapBuit = {};
  print(mapBuit);
  
  parells.add(8);
  parells.addAll({10, 12});
  
  print(parells);
  
  parells.addAll([14,16]);
  
  print(parells);
  
  List<int> parellsList = [2,4];
  parellsList.addAll({6,8});
  print(parellsList);
  
  print(parells.length);
  
  if(parells.contains(2)) {
    print('Si que esta');
  }
  else {
    print('no esta');
  }
}

demoMaps() {
    Map<int,String> nombres = {
    0 : 'zero',
    1 : 'u',
    2 : 'dos',
    3 : 'tres'
  };
  
  var M = {
    'nom' : 'Toni',
    'cognom' : 'Ballador',
    'edad' : 70
  }; // Map<String,dynamic>
  
  print(nombres);
  print(M);
  
  Map<dynamic,dynamic> stuff = {
    2: 'dos',
    'dos' : 2,
    true: 'verdeder',
    'hola' : 'adeu',
    28 : 4
  };
  
  print(stuff);
  
  print(nombres[2]); // als maps indicam la clau, no la posicio
  nombres[5] = 'cinc';
  
  print(nombres);
  
  nombres[5] = 'cinccc';
  
  print(nombres);
}

demoRunes() {
    // per representar iconos, emoticonos
  var cotxe = '\u{1F601} \u{1F609}';
  print(cotxe);
  
  Runes icones = Runes('\u{1F601} \u{1F609}');
  print(icones);
  String iconesString = String.fromCharCodes(icones);
  print(iconesString);
}
