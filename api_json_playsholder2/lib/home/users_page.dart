import 'package:api_json_playsholder2/constants.dart';
import 'package:api_json_playsholder2/model/services/remote_services.dart';
import 'package:api_json_playsholder2/model/user_model.dart';
import 'package:flutter/material.dart';

class UsersPage extends StatefulWidget {
  const UsersPage({super.key});

  @override
  State<UsersPage> createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  bool isLoaded = false;
  List<UsersModel>? user;
  Future<void> getDats() async {
    user = await RemoteServices().userFromJson();
    if (user != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  void initState() {
    getDats();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('UsersPage'),
      ),
      body: Visibility(
          visible: isLoaded,
          replacement: const Column(
            children: [
              Text('Загрузка'),
              SizedBox(height: 10),
              CircularProgressIndicator(),
            ],
          ),
          child: ListView.builder(
              itemCount: user?.length,
              itemBuilder: (context, index) {
                final users = user?[index];
                return Container(
                  decoration: Constants.usersPageContainer,
                  child: Column(
                    children: [
                      Text(users!.title),
                    ],
                  ),
                );
              })),
    );
  }
}
