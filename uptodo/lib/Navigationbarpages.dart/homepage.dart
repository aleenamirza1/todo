import 'package:flutter/material.dart';
import 'package:uptodo/Mains/Constants.dart';
import 'package:uptodo/Mains/HomeView.dart';
import 'package:uptodo/Todo/Todo_item.dart';
import 'package:uptodo/Todo/todo.dart';
import 'package:uptodo/splashlogsign/logsign.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget mWidget = HomeView();
  String title = "Home";
  final todosList = ToDo.todoList();
  List<ToDo> _foundToDo = [];
  final _todoController = TextEditingController();

  @override
  void initState() {
    _foundToDo = todosList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: _buildAppBar(),
      body: _buildBody(),
      drawer: _buildDrawer(),
    );
  }

  Widget _buildBody() {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 15,
          ),
          child: Column(
            children: [
              searchBox(),
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: 50,
                        bottom: 20,
                      ),
                      child: Text(
                        'All ToDos',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    for (ToDo todo in _foundToDo.reversed)
                      ToDoItem(
                        todo: todo,
                        onToDoChanged: _handleToDoChange,
                        onDeleteItem: _deleteToDoItem,
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(
                    bottom: 20,
                    right: 20,
                    left: 20,
                  ),
                  padding: EdgeInsets.symmetric(
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
                    controller: _todoController,
                    decoration: InputDecoration(
                      hintText: 'Add a new todo item',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  bottom: 20,
                  right: 20,
                ),
                child: ElevatedButton(
                  child: Text(
                    '+',
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                  onPressed: () {
                    _addToDoItem(_todoController.text);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 79, 53, 128),
                    minimumSize: Size(60, 60),
                    elevation: 10,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Drawer _buildDrawer() {
    return Drawer(
      backgroundColor: Colors.grey,
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.grey),
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.grey),
              accountName: Text(
                "Aleena Mirza",
                style: TextStyle(color: Colors.black),
              ),
              accountEmail: Text(
                "aleenamirza@gmail.com",
                style: TextStyle(color: Colors.black),
              ),
              currentAccountPicture: CircleAvatar(
                child: Text("A"),
                backgroundColor: Colors.black,
              ),
              currentAccountPictureSize: Size.square(50.0),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: Constants.drawerList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  tileColor: Constants.drawerList[index].color,
                  title: Text(Constants.drawerList[index].title),
                  leading: Constants.drawerList[index].icon,
                  onTap: () {
                    setState(() {
                      Navigator.pop(context);
                      title = Constants.drawerList[index].title;
                      mWidget = Constants.drawerList[index].widget;
                      if (title == "Logout") {
                        title = "Home";
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return getlogoutDialogue(context);
                          },
                        );
                      }
                    });
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _handleToDoChange(ToDo todo) {
    setState(() {
      todo.isDone = !todo.isDone;
    });
  }

  void _deleteToDoItem(String id) {
    setState(() {
      todosList.removeWhere((item) => item.id == id);
    });
  }

  void _addToDoItem(String toDo) {
    setState(() {
      todosList.add(ToDo(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        todoText: toDo,
      ));
    });
    _todoController.clear();
  }

  void _runFilter(String enteredKeyword) {
    List<ToDo> results = [];
    if (enteredKeyword.isEmpty) {
      results = todosList;
    } else {
      results = todosList
          .where((item) => item.todoText!
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
    }

    setState(() {
      _foundToDo = results;
    });
  }

  Widget searchBox() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        onChanged: (value) => _runFilter(value),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.black,
            size: 20,
          ),
          prefixIconConstraints: BoxConstraints(
            maxHeight: 20,
            minWidth: 25,
          ),
          border: InputBorder.none,
          hintText: 'Search',
          hintStyle: TextStyle(color: Colors.grey),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: 10),
          Container(
            height: 40,
            width: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                'https://images.pexels.com/photos/3763188/pexels-photo-3763188.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

getlogoutDialogue(BuildContext context) {
  return AlertDialog(
    title: Text("Logout"),
    content: Container(
      height: 100,
      child: Column(
        children: [
          Text("Do You want to logout?"),
          TextField(
            decoration: InputDecoration(hintText: "Feedback!"),
          )
        ],
      ),
    ),
    actions: [
      ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LogSign()),
          );
        },
        child: Text("Yes"),
      ),
      ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text("No"),
      ),
    ],
  );
}
