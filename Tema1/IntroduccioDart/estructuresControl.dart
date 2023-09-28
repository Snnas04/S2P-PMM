// Les estructures de control són molt semblant sals altres llenguatges de programació que coneixem

// h:1, m: 49, s: 11 => '01:49:11'
// StringBuffer

// CONDICIONALS
String hhmmss_antic(int h, int m, int s) {
  var buf = StringBuffer();

  if (h < 10) {
    buf.write(0);
  }
  buf.write(h);
  if (m < 10) {
    buf.write(0);
  }
  buf.write(m);
  if (s < 10) {
    buf.write(0);
  }
  buf.write(s);
  return buf.toString();
}

String hhmmss(int h, int m, int s) {
  var buf = StringBuffer();

  wr(d) {
    if (d < 10) buf.write(0);
    buf.write(d);
  }

  wr(h);
  buf.write(':');
  wr(m);
  buf.write(':');
  wr(s);

  return buf.toString();
}

// podem millorar la funcio utilitzant paràmetres nombrat
// ajuden a clarificar la funció, a documentar-la i també ens permet afegir valors per defecte

String hhmmss_nombrats({int h = 0, int m = 0, int s = 0}) {
  var buf = StringBuffer();

  wr(d) {
    if (d < 10) buf.write(0);
    buf.write(d);
  }

  wr(h);
  buf.write(':');
  wr(m);
  buf.write(':');
  wr(s);

  return buf.toString();
}

// FOR
bool es_primer(int n) {
  for (int d = 2; d * d <= n; d++) {
    if (n % d == 0) return false;
  }
  return n > 1;
}

void mostra_primers(int max) {
  for (int i = 0; i < max; i++) {
    if (es_primer(i)) print(i);
  }
}

// WHILE

List<int> llista_n_primers(int n) {
  List<int> primers = [];
  int i = 2;
  while (primers.length < n) {
    if (es_primer(i)) primers.add(i);
    i++;
  }
  return primers;
}

//TODO: For per a llistes

void mostraLlistaPrimers(int n) {
  for (var primer in llista_n_primers(n)) {
    print(primer);
  }
}

// Exercici: retorna llista de primers amb una diferencia de 2
List<List<int>> parelles_primers(int n) {
  var primers = llista_n_primers(n);
  List<List<int>> parelles = [];
  for (int i = 1; i < primers.length; i++) {
    if (primers[i] - primers[i - 1] == 2) {
      parelles.add([primers[i - 1], primers[i]]);
    }
  }
  return parelles;
}

void mostraLlistaParelles(n) {
  for (var p in parelles_primers(n)) {
    print('${p[0]} - ${p[1]}');
  }
}

void main() {
  print(hhmmss(1, 49, 11));
  print(es_primer(7));
  mostra_primers(100);
  print(llista_n_primers(10));
  mostraLlistaParelles(1000000);
}
