import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:practica_t1/screens/providers/UserInformation.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SPPMMD'),
        centerTitle: true,
      ),
      body: _mainContainer(context),
    );
  }

  _mainContainer(BuildContext context) {
    var titleStyle = const TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: Colors.red,
    );

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Home Page', style: titleStyle),
          const SizedBox(height: 20),
          // Use Consumer widget to listen to changes in userInfoModel
          Consumer<UserInfoModel>(
            builder: (context, userInfoModel, child) {
              // Get the updated user information
              UserInfo userInfo = userInfoModel.userInfo;
              return UserInfoWidget(userInfo: userInfo);
            },
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, 'personal'),
                child: const Icon(Icons.person),
              ),
              const SizedBox(width: 20),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, 'widget'),
                child: const Icon(Icons.widgets),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
