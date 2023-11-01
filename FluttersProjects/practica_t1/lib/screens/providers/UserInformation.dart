import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class UserInfoModel extends ChangeNotifier {
  UserInfo _userInfo = UserInfo(); // Initialize with default values

  UserInfo get userInfo => _userInfo;

  void updateUserInfo(UserInfo newInfo) {
    _userInfo = newInfo;
    notifyListeners();
  }
}

class UserInfo {
  String name;
  String surname;
  String email;
  String phone;
  String birthdate;

  UserInfo({this.name = '', this.surname = '', this.email = '', this.phone = '', this.birthdate = ''});

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

class UserInfoWidget extends StatelessWidget {
  final UserInfo userInfo;

  const UserInfoWidget({super.key, required this.userInfo});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Name: ${userInfo.name}'),
        Text('Surname: ${userInfo.surname}'),
        Text('Email: ${userInfo.email}'),
        Text('Phone: ${userInfo.phone}'),
        Text('Birthdate: ${userInfo.birthdate}'),
      ],
    );
  }
}
