import 'package:flutter/material.dart';

class AddItem extends StatelessWidget {
  final TextEditingController todoController;
  final Function(String) addToDoItem;

  const AddItem({super.key, required this.todoController, required this.addToDoItem});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: Container(
          margin: const EdgeInsets.only(
            right: 20,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 5,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 0.0),
                blurRadius: 10.0,
                spreadRadius: 0.0,
              ),
            ],
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            controller: todoController,
            decoration: const InputDecoration(
                hintText: 'Add a new todo item', border: InputBorder.none),
          ),
        ),
      ),
      ElevatedButton(
        onPressed: () {
          if (todoController.text.isNotEmpty) {
            addToDoItem(todoController.text);
          }
        },
        style: ElevatedButton.styleFrom(
            minimumSize: const Size(60, 60),
            elevation: 10,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            )
        ),
        child: const Text(
          '+',
          style: TextStyle(
            fontSize: 40,
          ),
        ),
      ),
    ]);
  }
}