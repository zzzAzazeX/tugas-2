import 'package:flutter/material.dart';
import 'package:tugas_2/ui/form_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Aplikasi Flutter Pertama",
        home: FormData/*Scaffold*/ (
          //appBar: AppBar(
          // title: const Text("Aplikasi Flutter Pertama"),
        ));
  }
}