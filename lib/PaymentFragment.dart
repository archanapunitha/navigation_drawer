import 'package:flutter/material.dart';
void main(){
  runApp(PaymentFragment());
}
class PaymentFragment extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Text("Welcome to our payment Results...",
    style: new TextStyle(color: Colors.blueAccent,
    fontSize: 20.0,
    ),
    ),);
  }

}