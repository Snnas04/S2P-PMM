import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:practica_t1/screens/providers/UserInformation.dart';

class PersonalPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController surnameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController birthdateController = TextEditingController();

  // Removed 'const' keyword from here
  PersonalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userInfoModel = Provider.of<UserInfoModel>(context);
    final userInfo = userInfoModel.userInfo;

    // Initialize the controllers with the existing user information
    nameController.text = userInfo.name;
    surnameController.text = userInfo.surname;
    emailController.text = userInfo.email;
    phoneController.text = userInfo.phone;
    birthdateController.text = userInfo.birthdate;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Personal Page'),
        centerTitle: true,
      ),
      body: _userInfo(context, userInfo, userInfoModel),
    );
  }

  _userInfo(BuildContext context, UserInfo userInfo, UserInfoModel userInfoModel) {
    var titleStyle = const TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: Colors.red,
    );

    return Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Personal Page', style: titleStyle),
            const SizedBox(height: 20,),
            _userForm(context, userInfoModel),
          ],
        ),
      ),
    );
  }

  _userForm(BuildContext context, UserInfoModel userInfoModel) {
    UserInfo userInfo = UserInfo(); // Create an instance of UserInfo

    return Column(
      children: [
        TextField(
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Name',
          ),
          controller: nameController,
          onChanged: (value) {
          userInfo = userInfo.copyWith(name: value);
        }, // Use the nameController
        ),

        const SizedBox(height: 20,),

        TextField(
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Surname',
          ),
          controller: surnameController,
          onChanged: (value) {
          userInfo = userInfo.copyWith(surname: value);
        },  // Use the surnameController
        ),

        const SizedBox(height: 20,),

        TextField(
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Email',
          ),
          controller: emailController,
          onChanged: (value) {
          userInfo = userInfo.copyWith(email: value);
        },  // Use the emailController
        ),

        const SizedBox(height: 20,),

        TextField(
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Phone',
          ),
          controller: phoneController,
          onChanged: (value) {
          userInfo = userInfo.copyWith(phone: value);
        }, // Use the phoneController
        ),

        const SizedBox(height: 20,),

        TextField(
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Birthdate',
          ),
          controller: birthdateController,
          onChanged: (value) {
          userInfo = userInfo.copyWith(birthdate: value);
        },  // Use the birthdateController
        ),

        const SizedBox(height: 20,),

        _buttons(context, userInfoModel)

        // ElevatedButton(
        // onPressed: () {
        //   userInfoModel.updateUserInfo(userInfo);
        //   Navigator.pop(context);
        // },
        // child: const Icon(Icons.save),
      ),
      ],
    );
  }

  _buttons(BuildContext context, UserInfoModel userInfoModel) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            UserInfo updatedUserInfo = UserInfo(
              name: nameController.text,
              surname: surnameController.text,
              email: emailController.text,
              phone: phoneController.text,
              birthdate: birthdateController.text,
            );

            userInfoModel.updateUserInfo(updatedUserInfo);
            Navigator.pop(context);
          },
          child: const Icon(Icons.save),
        ),
      ],
    );
  }
}
