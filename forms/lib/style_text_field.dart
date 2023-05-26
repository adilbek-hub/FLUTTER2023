import 'package:flutter/material.dart';

class StyleTextField extends StatefulWidget {
  const StyleTextField({super.key});

  @override
  State<StyleTextField> createState() => _StyleTextFieldState();
}

class _StyleTextFieldState extends State<StyleTextField> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StyleTextField'),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Издөө терминин киргизиңиз'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: TextFormField(
              decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Колдонуучу атыңызды киргизиңиз'),
            ),
          )
        ],
      ),
    );
  }
}
