class Color {
  int r, g, b;

  Color(this.r, this.g, this.b);

  String toString() => 'Color ($r, $g, $b)';

  static final Color vermell = Color(255, 0, 0);
  static final Color negre = Color(0, 0, 0);

  static Color mescla(Color a, Color b) => Color(((a.r + b.r) / 2).round(),
      ((a.g + b.g) / 2).round(), ((a.b + b.b) / 2).round());

  // Un mètode d'aquest estil ens seria molt útil per a retornar una còpia de la nostra instància.
}

void main() {
  print(Color.negre);
  print(Color.mescla(Color.negre, Color.vermell));
}
