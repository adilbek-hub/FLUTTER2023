import 'package:flutter/material.dart';
import 'package:todo_app_with_api_swagger/add_page.dart';

class ToDoListPage extends StatefulWidget {
  const ToDoListPage({super.key});

  @override
  State<ToDoListPage> createState() => _ToDoListPageState();
}

class _ToDoListPageState extends State<ToDoListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('To Do List')),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: navigateToAddPage, label: const Text('Add Item')),
    );
  }

  void navigateToAddPage() {
    final route = MaterialPageRoute(
      builder: (context) => const AddTodoPage(),
    );

    Navigator.push(context, route);
  }
}
