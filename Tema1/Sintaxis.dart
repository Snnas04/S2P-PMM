void main() {
  var parells = [2,4,6];
  
  print(parells);
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
