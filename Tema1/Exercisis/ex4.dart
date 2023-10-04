void main() {
  maxOfThree(12, 4, -67);
}

void maxOfThree(int a, int b, int c) {
  int max = 0;

  if (a > b && a > c) {
    max = a;
  } else if (b > a && b > c) {
    max = b;
  } else {
    max = c;
  }

  print("El més gran es $max");
}
