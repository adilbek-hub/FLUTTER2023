import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:product_api/api_service.dart';
import 'package:product_api/model.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   List<UserModel>? _userModel;

   

  @override
  void initState() {
    _getData();
    super.initState();
  }

  void _getData() async {
    final userModel =  await ApiService().getUsers();
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('MyHomePage'),
      ),
      body: ListView.builder(
          itemCount: _userModel!.length,
          itemBuilder: (context, index) {
            final _user = _userModel![index];
            return Card(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(_user.),
                      Text(_userModel![index].username),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(_userModel![index].email),
                      Text(_userModel![index].website),
                    ],
                  ),
                ],
              ),
            );
          }),
    );
  }
}

 Future<void> _loadCriptoCoints() async {
 _userModel =  await ApiService().getUsers();
    setState(() {});
  }

