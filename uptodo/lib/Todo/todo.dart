class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'Dsa Revision for mids', isDone: true),
      ToDo(id: '02', todoText: 'Up to do Assignment ', isDone: true),
      ToDo(
        id: '03',
        todoText: 'Coa Chapter 2 notes',
      ),
    ];
  }
}
