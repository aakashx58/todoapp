import 'package:flutter/material.dart';
import 'package:todoapp/add_todo.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String text = 'Simple Text';

  void changeText() {
    setState(() {
      text = 'hello Text';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Text('Drawer'),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Todo App"),
        actions: [
          InkWell(
            // enableFeedback: false,
            // splashColor: Colors.transparent,
            // highlightColor: Colors.transparent,
            onTap: () {
              showModalBottomSheet(
                  // backgroundColor: Colors.black12,
                  context: context,
                  builder: (context) {
                    return Container(
                      padding: EdgeInsets.all(20),
                      height: 200,
                      child: AddTodo(),
                    );
                  });
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.add),
            ),
          ),
        ],
      ),
      body: Container(
        child: Text('$text'),
      ),
    );
  }
}
