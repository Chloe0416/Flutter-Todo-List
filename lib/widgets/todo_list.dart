import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/todo.dart';
import '../widgets/todo_item.dart';

class TodoList extends StatelessWidget {
  final List<ToDo> todosList;
  final Function(ToDo) onToDoChanged;
  final Function(String) onDeleteItem;

  const TodoList({super.key, required this.todosList, required this.onToDoChanged, required this.onDeleteItem  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(
                top: 30,
                bottom: 20
            ),
            child: const Text(
              'All ToDos',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          for (ToDo todoItem in todosList.reversed)
            ToDoItem(
              todo: todoItem,
              onToDoChanged: onToDoChanged,
              onDeleteItem: onDeleteItem,
            ),
        ],
      ),
    );
  }
}