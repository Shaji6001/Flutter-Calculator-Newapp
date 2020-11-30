import 'package:flutter/material.dart';
import 'package:flutter_app_calculator_newapp/screens/add.dart';
import 'package:flutter_app_calculator_newapp/screens/division.dart';
import 'package:flutter_app_calculator_newapp/screens/drawer.dart';
import 'package:flutter_app_calculator_newapp/screens/multiply.dart';
import 'package:flutter_app_calculator_newapp/screens/subtract.dart';

void main()=>runApp(CalculatorNew());

class CalculatorNew extends StatefulWidget {
  @override
  _CalculatorNewState createState() => _CalculatorNewState();
}
class _CalculatorNewState extends State<CalculatorNew> {
  int currentselection=0;
  var mypagess=[MyAddPage(),MySubtractpage(),MyMultiplyPage(),MyDivisionPage()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(

          title: Text("Calculator"),backgroundColor: Colors.amber,
        ),body:mypagess[currentselection],
        bottomNavigationBar: BottomNavigationBar(type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.lightGreenAccent,
            currentIndex: currentselection,
            items: [
          BottomNavigationBarItem(label: "ADD",
              icon: Icon(Icons.add)),
          BottomNavigationBarItem(label: "Subtract",
              icon: Icon(Icons.subject)),
          BottomNavigationBarItem(label: "Multiply",
              icon: Icon(Icons.museum)),
          BottomNavigationBarItem(label: "Division",
              icon: Icon(Icons.ac_unit_sharp )),
      ],
        onTap: (index){
          setState(() {
            currentselection=index;
          });
        },
        ),
      ),
    );
  }
}
