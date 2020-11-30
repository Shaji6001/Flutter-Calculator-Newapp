import 'package:flutter/material.dart';
class MySubtractpage extends StatefulWidget {
  @override
  _MySubtractpageState createState() => _MySubtractpageState();
}

class _MySubtractpageState extends State<MySubtractpage> {
  TextEditingController getVal1=TextEditingController();
  TextEditingController getVal2=TextEditingController();
  int result=0;
  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.all(15.0),
      child: Column(
        children: [
          TextField(controller: getVal1,
            decoration: InputDecoration(
              hintText: "Enter the First Value",border: OutlineInputBorder()
            ),
          ),SizedBox(height: 15.0,),
          TextField(controller: getVal2,
            decoration: InputDecoration(
            hintText: "Enter the Second Value",border: OutlineInputBorder()
          ),),
          RaisedButton(onPressed: (){
            int getval1= int.parse(getVal1.text);
            int getval2=int.parse(getVal2.text);
            setState(() {
              result=getval1-getval2;
            });
            print(result);
          },
          child: Text("Subtract"),color: Colors.deepOrange,),
          Text(result.toString()),

        ],

      ),
    );
  }
}
