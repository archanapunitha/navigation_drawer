import 'package:flutter/material.dart';
void main(){
  runApp(BackupFragment());
}
class BackupFragment extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Text("Welcome to our Backup Fragment...",
    style: new TextStyle(color: Colors.blueAccent,
    fontSize: 20.0,
    ),
    ),);
  }

}