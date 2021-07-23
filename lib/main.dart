import 'package:flutter/material.dart';
import 'package:memoapp/models/NoteOperation.dart';
import 'package:memoapp/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<NoteOperation>(
      create: (context) => NoteOperation(),
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
