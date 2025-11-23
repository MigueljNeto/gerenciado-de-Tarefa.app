class Task {
  String title;
  DateTime date;
  bool done;

  Task({
    required this.title,
    required this.date,
    this.done = false,
  });

  // Método para converter em mapa — caso você queira usar futuramente com Firebase
  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'date': date.toIso8601String(),
      'done': done,
    };
  }

  // Método para reconstrução — futuro uso
  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      title: map['title'],
      date: DateTime.parse(map['date']),
      done: map['done'],
    );
  }
}
