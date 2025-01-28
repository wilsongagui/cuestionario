import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: TestPage(),
        ),
      ),
    );
  }
}

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(flex:3,child: Center(child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text("¿El cielo es rojo?", style:TextStyle(color: Colors.purple, fontSize: 50)),
        ))),
        Expanded(child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: TextButton(onPressed: (){}, child: Text("verdadero",)),
        )),


        Expanded(child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: TextButton(onPressed: (){}, child: Text("falso"),),
        ))

      ],
    );
  }
}
