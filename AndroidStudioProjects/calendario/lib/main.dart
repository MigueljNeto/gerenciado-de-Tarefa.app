import 'package:flutter/material.dart';
import 'package:calendario/paginas/login.dart';
import 'package:calendario/paginas/registro.dart';
import 'package:calendario/paginas/calendario.dart';
import 'package:calendario/paginas/listaTarefas.dart';
import 'package:calendario/tema/appTema.dart';

void main() {
  runApp(const Calendario());
}

class Calendario extends StatelessWidget {
  const Calendario({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gerenciado de Tarefas',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.vibrantTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/calendar': (context) => const CalendarPage(),
        '/tasks': (context) => const TaskListPage(),
      },
    );
  }
}
