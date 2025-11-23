import 'package:flutter/material.dart';
import 'package:calendario/modelos/tarefa.dart';
import 'package:calendario/tema/appTema.dart';

class TaskItem extends StatelessWidget {
  final Task task;
  final VoidCallback onToggle;
  final VoidCallback onRemove;

  const TaskItem({
    super.key,
    required this.task,
    required this.onToggle,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      child: ListTile(
        tileColor: Colors.white,
        leading: Checkbox(
          value: task.done,
          activeColor: AppTheme.blueElectric,
          onChanged: (_) => onToggle(),
        ),
        title: Text(
          task.title,
          style: TextStyle(
            decoration: task.done ? TextDecoration.lineThrough : null,
            color: task.done ? Colors.grey[600] : Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: IconButton(
          icon: const Icon(Icons.delete, color: Colors.redAccent),
          onPressed: onRemove,
        ),
      ),
    );
  }
}
