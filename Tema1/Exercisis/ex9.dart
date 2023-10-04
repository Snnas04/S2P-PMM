void main() {
  var cuadrats = 4;

  print('Aquí tens una quadricula de $cuadrats per $cuadrats');
  
  var vertical = "|   " * (cuadrats + 1);
  var horizontal = " ---" * cuadrats;

  for (int i = 0; i < cuadrats; i++) {
    print(horizontal);
    print(vertical);
  }
  print(horizontal);
}