import 'package:flutter/material.dart';
class MyMultiplyPage extends StatefulWidget {
  @override
  _MyMultiplyPageState createState() => _MyMultiplyPageState();
}

class _MyMultiplyPageState extends State<MyMultiplyPage> {
  int result=0;
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
        ),),SizedBox(height: 10.0,),
        TextField(controller: getVal2,
          decoration: InputDecoration(
            hintText: "Enter the Second Number",border: OutlineInputBorder()
          ),
        ),SizedBox(height: 10.0,),
        RaisedButton(onPressed: (){
          int getval1=int.parse(getVal1.text);
          int getval2=int.parse(getVal2.text);

          setState(() {
            result=getval1*getval2;
          });
          print(result);
        },

        child: Text("Multiply"),color: Colors.blue,),
        Text(result.toString()),
      ],
    ),);
  }
}
