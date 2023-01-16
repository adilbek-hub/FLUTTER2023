import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    Key? key,
    this.hintext,
    this.maxlines,
    this.controller,
    this.onTap,
    required String? Function(String string) validator,
  }) : super(key: key);
  final String? hintext;
  final TextEditingController? controller;
  final int? maxlines;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: maxlines,
      onTap: onTap,
      decoration: InputDecoration(
          hintText: hintext,
          label: Text(hintext ?? ""),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
    );
  }
}
