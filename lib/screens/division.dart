import 'package:flutter/material.dart';
class MyDivisionPage extends StatefulWidget {
  @override
  _MyDivisionPageState createState() => _MyDivisionPageState();
}

class _MyDivisionPageState extends State<MyDivisionPage> {
  double results=0;
  TextEditingController getVal1=TextEditingController();
  TextEditingController getVal2=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.all(15.0),
      child: Column(
        children: [
          TextField(controller: getVal1,
            decoration: InputDecoration(
              hintText: "Enter the First Number",border: OutlineInputBorder()
            ),
          ),SizedBox(height: 15.0,),
          TextField(controller: getVal2,
            decoration: InputDecoration(
              hintText: "Enter the Second Number",border: OutlineInputBorder()
            ),
          ),SizedBox(height: 15.0,),
          RaisedButton(onPressed: (){
            double getval1=double.parse(getVal1.text);
            double getval2=double.parse(getVal2.text);

            setState(() {
               results=getval1/getval2;
            });
            print(results);
          },

            child: Text("Division"),
            color: Colors.purple,),
          Text(results.toString()),

        ],
      ),
    );
  }
}
