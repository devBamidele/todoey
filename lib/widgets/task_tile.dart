import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    required this.isChecked,
    required this.item,
    required this.checkboxCallback,
    Key? key,
  }) : super(key: key);

  final bool isChecked;
  final String item;
  final Function(bool?) checkboxCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        item,
        style: TextStyle(
          fontSize: 18,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
