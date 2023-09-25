import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
            GestureDetector(
              child: Text("点击跳转搜索页面"
                ,),
              onTap: (){
                Navigator.pushNamed(context, '/search');
              },
            ),
      ),
    );
  }
}
