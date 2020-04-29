import 'package:flutter/material.dart';
void main(){
  runApp(TrackingFragment());
}
class TrackingFragment extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Text("Welcome to our Banking...",
    style: new TextStyle(color: Colors.blueAccent,
    fontSize: 20.0,
    ),
    ),);
  }

}