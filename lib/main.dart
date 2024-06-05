import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Latihan1());
}
class Latihan1 extends StatelessWidget {
  const Latihan1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController pesanControler = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan 1 Flutter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Rikcho Jordy Frans"),
            TextField(
              controller: pesanControler,
            ),
            ElevatedButton(
              onPressed: (){
                ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(pesanControler.text)));
              },
              child: Text("Tombol1"),
            ),
          ],
        ),
      ),
    );
  }
}
