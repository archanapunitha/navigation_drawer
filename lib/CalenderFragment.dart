import 'package:flutter/material.dart';
void main(){
  runApp(CalenderFragment());
}
class CalenderFragment extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Text("Welcome to see our Calender...",
    style: new TextStyle(color: Colors.blueAccent,
    fontSize: 20.0,
    ),
    ),);
  }

}