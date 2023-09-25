import 'package:flutter/material.dart';
import 'package:imitatejdshop/routes/routes.dart';


void main() {
  runApp( Myapp());
}

class Myapp extends StatefulWidget {
   Myapp({super.key});

  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      onGenerateRoute: onGenerateRoute
    );
  }
}

