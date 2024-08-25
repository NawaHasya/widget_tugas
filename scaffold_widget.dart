import 'package:flutter/material.dart';
import 'package:widget_1/image_widget.dart';

class ScaffoldWidget extends StatefulWidget {
  const ScaffoldWidget({super.key});

  @override
  State<ScaffoldWidget> createState() => _ScaffoldWidgetState();
}

class _ScaffoldWidgetState extends State<ScaffoldWidget> {
  var _selectedIndex = 0;

  onTapBar(index){
    setState(() {
      _selectedIndex = index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text('Ranu Regulo'),
            leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.home,
              ),
            ),
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            actions: [Icon(Icons.more_vert), Icon(Icons.logout)]),
        body: ImageWidget(),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.verified_user), label: "User")
      
        ]),
      ),
    );
  }
}
