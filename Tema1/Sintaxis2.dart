void main() {

}

demoCondicionals() {
  var nombre = 2;
  
  if (nombre == 2) {
    print('Es nombre es 2');
  }
  
  if (nombre > 5) {
    print ('El nombre $nombre es major que 5');
  } else if (nombre < 5) {
    print('El nombre $nombre es menor que 5');
  } else {
    print('El nombre $nombre es 5');
  }
  
  // "?" es la condicio de true i ":" es la condicio de false
  nombre == 2
    ? print('Es nombre es 2')
    : print('Es nombre no es 2');
}

demoBucleFor() {
  var animals = ['ca', 'moix', 'elefant', 'tigre'];
  
  for (var i=0; i<animals.length;i++) {
    print(animals[i]);
  }
  
  animals.forEach((element) => print(element));
  
  animals.forEach(
    (def){
    print(def);
  });
  
  animals.forEach(print);
  
  for (var i in animals) {
    print(i);
  }
}

demoSwithc() {
  
}

demoWhile() {
  
}
