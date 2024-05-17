import 'package:flutter/material.dart';
import 'package:todolist1/inputPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage();
  final String title = 'Todo list';
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<bool> isCheck = [];
  var typeText = '';
  var text = [];
  void _setText() {
    setState(() {
      text.add(typeText);
      isCheck.add(false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 20,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                children: [
                  Checkbox(
                    value: isCheck[index],
                    activeColor: Colors.blue,
                    onChanged: (value) {
                      setState(() {
                        isCheck[index] = !isCheck[index];
                      });
                    },
                  ),
                  Text(
                    text[index],
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            );
          },
          itemCount: text.length,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          typeText = await Navigator.push(
              context, MaterialPageRoute(builder: (context) => InputPage()));
          _setText();
        },
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
