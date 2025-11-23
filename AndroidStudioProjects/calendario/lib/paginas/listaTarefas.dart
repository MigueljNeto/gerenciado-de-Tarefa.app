import 'package:flutter/material.dart';
import 'package:calendario/modelos/tarefa.dart';
import 'package:calendario/tema/appTema.dart';
import 'package:calendario/widgets/itens.dart';

class TaskListPage extends StatefulWidget {
  const TaskListPage({super.key});

  @override
  State<TaskListPage> createState() => _TaskListPageState();
}

class _TaskListPageState extends State<TaskListPage> {
  List<Task> tasks = [];
  DateTime selectedDate = DateTime.now();
  final TextEditingController taskController = TextEditingController();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final args = ModalRoute.of(context)!.settings.arguments;
    if (args != null && args is DateTime) {
      selectedDate = args;
    }
  }

  void addTask(String title) {
    setState(() {
      tasks.add(Task(title: title, date: selectedDate));
      sortTasks();
    });
    taskController.clear();
  }

  void removeTask(Task task) {
    setState(() {
      tasks.remove(task);
      sortTasks();
    });
  }

  void toggleDone(Task task) {
    setState(() {
      task.done = !task.done;
      sortTasks();
    });
  }

  void sortTasks() {
    tasks.sort((a, b) {
      if (a.done != b.done) {
        return a.done ? 1 : -1; // Pendentes primeiro
      }
      return a.title.toLowerCase().compareTo(b.title.toLowerCase());
    });
  }

  void showAddTaskDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Adicionar Tarefa"),
        content: TextField(
          controller: taskController,
          decoration: const InputDecoration(
            hintText: "Digite o título da tarefa",
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cancelar"),
          ),
          ElevatedButton(
            onPressed: () {
              if (taskController.text.trim().isNotEmpty) {
                addTask(taskController.text.trim());
                Navigator.pop(context);
              }
            },
            child: const Text("Adicionar"),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final tasksForDay =
    tasks.where((t) => t.date.day == selectedDate.day &&
        t.date.month == selectedDate.month &&
        t.date.year == selectedDate.year).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Tarefas - ${selectedDate.day}/${selectedDate.month}/${selectedDate.year}"),
        backgroundColor: AppTheme.purpleNeon,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: showAddTaskDialog,
        child: const Icon(Icons.add),
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [AppTheme.purpleNeon, AppTheme.pinkVibrant],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: tasksForDay.isEmpty
            ? Center(
          child: Text(
            "Nenhuma tarefa para este dia.",
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: Colors.white, fontSize: 18),
          ),
        )
            : ListView.builder(
          itemCount: tasksForDay.length,
          itemBuilder: (context, index) {
            final task = tasksForDay[index];
            return TaskItem(
              task: task,
              onToggle: () => toggleDone(task),
              onRemove: () => removeTask(task),
            );
          },
        ),
      ),
    );
  }
}
