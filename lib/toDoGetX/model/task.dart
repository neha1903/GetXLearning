class Task {
  late String name;
  bool isDone = false;

  Task({required this.name, required this.isDone});

  void toggleIsDone() {
    isDone = !isDone;
  }

  factory Task.fromJson(Map<String, dynamic> json) => Task(
        name: json['name'],
        isDone: json['isDone'],
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'isDone': isDone,
      };
}
