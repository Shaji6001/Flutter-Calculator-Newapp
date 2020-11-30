import 'package:flutter/material.dart';
class MyAddPage extends StatefulWidget {
  @override
  _MyAddPageState createState() => _MyAddPageState();
}

class _MyAddPageState extends State<MyAddPage> {
  TextEditingController getVal1=TextEditingController();
  TextEditingController getVal2=TextEditingController();
  int result =0;
  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.all(15.0),
      child: Column(
        children: [
          TextField(controller: getVal1,
          decoration: InputDecoration(
          hintText: "Enter First Number"
      ),
      ),SizedBox(height: 15.0,),
          TextField(controller: getVal2,
      decoration: InputDecoration(
      hintText: "Enter Second Number"
      ),
    ),SizedBox(height: 15.0,),
          RaisedButton(onPressed: (){
            int getval=int.parse(getVal1.text);
            int getval2=int.parse(getVal2.text);
            setState(() {
              result=getval+getval2;
            });

            print(result);

          },
          child: Text("ADD"),color: Colors.lightGreenAccent,),
          Text(result.toString()),
        ],
      ),
    );
  }
}
