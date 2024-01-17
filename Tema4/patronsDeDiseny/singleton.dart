class Singleton {
  static Singleton? _instance;

  Singleton._(); // private constructor

  static Singleton? get instance {
    if (_instance == null) {
      _instance = new Singleton._();
    }

    return _instance;
  }
}

void main() {
  var s1 = Singleton.instance;
  var s2 = Singleton.instance;

  print(identical(s1, s2));
}

