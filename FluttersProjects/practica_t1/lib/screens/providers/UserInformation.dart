import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// Define la clase UserInfoModel que extiende ChangeNotifier.
class UserInfoModel extends ChangeNotifier {
  UserInfo _userInfo = UserInfo(); // Inicializar con valores predeterminados.

  UserInfo get userInfo => _userInfo;

  // Función para actualizar la información del usuario y notificar a los oyentes.
  void updateUserInfo(UserInfo newInfo) {
    _userInfo = newInfo;
    notifyListeners();
  }
}

// Define la clase UserInfo que representa la información del usuario.
class UserInfo {
  String name;
  String surname;
  String email;
  String phone;
  String birthdate;

  // Constructor con valores predeterminados.
  UserInfo({
    this.name = 'Def Username', 
    this.surname = 'Def Surname', 
    this.email = 'defuseremail@email.com', 
    this.phone = '600 144 033', 
    this.birthdate = '01/01/2000'
  });

  // Función para crear una copia de UserInfo con valores opcionales actualizados.
  UserInfo copyWith({String? name, String? surname, String? email, String? phone, String? birthdate}) {
    return UserInfo(
      name: name ?? this.name,
      surname: surname ?? this.surname,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      birthdate: birthdate ?? this.birthdate,
    );
  }
}

// Define la clase UserInfoWidget que muestra la información del usuario en un widget.
class UserInfoWidget extends StatelessWidget {
  final UserInfo userInfo;
  final TextStyle style;

  // Constructor de UserInfoWidget.
  const UserInfoWidget({Key? key, required this.userInfo, this.style = const TextStyle(
    fontSize: 18,
    color: Colors.white,
  )}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 30),
        Text('Name: ${userInfo.name}', style: style),
        const SizedBox(height: 5),
        Text('Surname: ${userInfo.surname}', style: style),
        const SizedBox(height: 5),
        Text('Email: ${userInfo.email}', style: style),
        const SizedBox(height: 5),
        Text('Phone: ${userInfo.phone}', style: style),
        const SizedBox(height: 5),
        Text('Birthdate: ${userInfo.birthdate}', style: style),
        const SizedBox(height: 15),
      ],
    );
  }
}
