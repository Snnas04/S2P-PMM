import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:practica_t1/screens/providers/UserInformation.dart';

// Define una clase PersonalPage que extiende StatelessWidget.
class PersonalPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController surnameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController birthdateController = TextEditingController();

  // Constructor de la clase PersonalPage.
  PersonalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Obtener el modelo de información del usuario del contexto.
    final userInfoModel = Provider.of<UserInfoModel>(context);
    // Obtener la información del usuario actual.
    final userInfo = userInfoModel.userInfo;

    // Inicializar los controladores con la información del usuario existente.
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
      body: _userInfo(context, userInfo, userInfoModel), // Llamar a la función _userInfo para construir el contenido de la página.
    );
  }

  // Función para construir la sección de información del usuario.
  _userInfo(BuildContext context, UserInfo userInfo, UserInfoModel userInfoModel) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _userForm(context, userInfoModel), // Llamar a la función _userForm para construir el formulario de usuario.
          ],
        ),
      ),
    );
  }

  // Función para construir el formulario de información del usuario.
  _userForm(BuildContext context, UserInfoModel userInfoModel) {
    UserInfo userInfo = UserInfo(); // Crear una instancia de UserInfo.

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
        }, // Utilizar el nameController para actualizar el nombre del usuario. 
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
        },  // Utilizar el surnameController para actualizar el nombre del usuario.
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
        },  // Utilizar el emailController para actualizar el nombre del usuario.
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
        }, // Utilizar el phoneController para actualizar el nombre del usuario.
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
        },  // Utilizar el birthdateController para actualizar el nombre del usuario.
        ),

        const SizedBox(height: 20,),

        _buttons(context, userInfoModel)
      ]);
  }

  // Función para construir los botones de navegación.
  _buttons(BuildContext context, UserInfoModel userInfoModel) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context); // Volvera a la pagina anterior.
          },
          child: const Icon(Icons.arrow_back),
        ),

        const SizedBox(width: 20,),

        ElevatedButton(
          onPressed: () {
            // Actualizar la infromacin del usuario con los valores ingresados en el formulario.
            UserInfo updatedUserInfo = UserInfo(
              name: nameController.text,
              surname: surnameController.text,
              email: emailController.text,
              phone: phoneController.text,
              birthdate: birthdateController.text,
            );

            userInfoModel.updateUserInfo(updatedUserInfo); // Actualizar el modelo de información del usuario.
            Navigator.pop(context); // Volvera a la pagina anterior.
          },
          child: const Icon(Icons.save),
        ),
      ],
    );
  }
}
