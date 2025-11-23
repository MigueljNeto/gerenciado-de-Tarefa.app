import 'package:flutter/material.dart';
import 'package:calendario/tema/appTema.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Calendário",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: AppTheme.purpleNeon,
      ),

      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [AppTheme.purpleNeon, AppTheme.pinkVibrant],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),

        child: Column(
          children: [
            const SizedBox(height: 25),

            Text(
              "Selecione um dia",
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: Colors.white,
                fontSize: 26,
              ),
            ),

            const SizedBox(height: 25),

            // CARD DO CALENDÁRIO
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 8,
                    offset: Offset(2, 3),
                  )
                ],
              ),
              child: Column(
                children: [
                  const Text(
                    "Escolha a data:",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 10),

                  // BOTÃO DE DATE PICKER
                  ElevatedButton(
                    onPressed: () async {
                      DateTime? date = await showDatePicker(
                        context: context,
                        initialDate: selectedDate,
                        firstDate: DateTime(2020),
                        lastDate: DateTime(2035),
                        builder: (context, child) {
                          return Theme(
                            data: Theme.of(context).copyWith(
                              colorScheme: const ColorScheme.light(
                                primary: AppTheme.purpleNeon,
                                onPrimary: Colors.white,
                                onSurface: AppTheme.purpleNeon,
                              ),
                            ),
                            child: child!,
                          );
                        },
                      );

                      if (date != null) {
                        setState(() => selectedDate = date);
                      }
                    },
                    child: const Text("Escolher Data"),
                  ),

                  const SizedBox(height: 15),

                  Text(
                    "Dia selecionado:",
                    style: TextStyle(
                      color: AppTheme.blueElectric,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 5),

                  Text(
                    "${selectedDate.day}/${selectedDate.month}/${selectedDate.year}",
                    style: const TextStyle(fontSize: 22),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/tasks',
                  arguments: selectedDate,
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppTheme.blueElectric,
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 14),
              ),
              child: const Text("Ir para as tarefas"),
            )
          ],
        ),
      ),
    );
  }
}
