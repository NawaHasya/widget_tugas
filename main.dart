import 'package:flutter/material.dart';
import 'package:widget_1/button_widget.dart';
import 'package:widget_1/cupertino_widget.dart';
import 'package:widget_1/dialog_widget.dart';
import 'package:widget_1/image_widget.dart';
import 'package:widget_1/inputselection_widget.dart';
import 'package:widget_1/scaffold_widget.dart';
import 'package:widget_1/text_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TelkomSchool',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: InputselectionWidget(),
    );
  }
}
