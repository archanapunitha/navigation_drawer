import 'package:flutter/material.dart';
import 'package:navigation_drawer/BackupFragment.dart';
import 'package:navigation_drawer/CalenderFragment.dart';
import 'package:navigation_drawer/PaymentFragment.dart';
import 'package:navigation_drawer/TrackingFragment.dart';
import 'BankingFragment.dart';
void main(){
  runApp(MaterialApp(home: MyApp(),
  ));
}
class MyApp extends StatefulWidget{
  @override
  MyAppDrawer createState() {
    return MyAppDrawer();
  }

}
class MyAppDrawer extends State<MyApp>{
  int CurrentIndex=1;
  Widget getCurrentIndex(){
    switch(CurrentIndex){
      case 1:
      return BankingFragment();
      break;
      case 2:
      return PaymentFragment();
      break;
      case 3:
      return CalenderFragment();
      break;
      case 4:
      return BackupFragment();
      break;
      case 5:
      return TrackingFragment();
      break;

    }
  }

  setCurrentIndex(int Index){
    setState(() {
        CurrentIndex=Index;
    });
    Navigator.of(context).pop();
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(drawer: new Drawer(
      child: new Column(
        children:<Widget>[
          Container(
            padding: EdgeInsets.only(top:50.0),
            height: 250.0,
            width: double.infinity,
            color: Colors.blueAccent,
            child: new Column(  
            children: <Widget>[
              Icon(
                Icons.account_circle,
                color: Colors.white,
                size: 100.0,),

                SizedBox(
                  height: 10.0,
                ),

                Text("Archana",style: new TextStyle(
                  color: Colors.white,
                  fontSize: 20.0
                )),

                 Text("archanapunitha30@gmail.com",style: new TextStyle(
                  color: Colors.white54,
                  fontSize: 12.0
                ))
            ],
          )),
          ListTile(
            selected: CurrentIndex==1? true:false,
            onTap: () {
              setCurrentIndex(1);
            },
            leading: Icon(Icons.add_box),
            title: new Text("Banking"),
          ),
          ListTile(
            selected: CurrentIndex==2? true:false,
            onTap: () {
              setCurrentIndex(2);
            },
            leading: Icon(Icons.payment),
            title: new Text("Payment"),
          ),
          ListTile(
            selected: CurrentIndex==3? true:false,
            onTap: () {
              setCurrentIndex(3);
            },
            leading: Icon(Icons.calendar_view_day),
            title: new Text("Calender"),
          ),
           ListTile(
             selected: CurrentIndex==4? true:false,
            onTap: () {
              setCurrentIndex(4);
            },
            leading: Icon(Icons.backup),
            title: new Text("Backup"),
          ),
           ListTile(
             selected: CurrentIndex==5? true:false,
            onTap: () {
              setCurrentIndex(5);
            } ,
            leading: Icon(Icons.track_changes),
            title: new Text("Tracking"),
          ),
        ]
      ),
    ),
      appBar:AppBar(title: new Text("Flutter App"),
      centerTitle: true,
      elevation: 0.0,
      brightness: Brightness.light,
      actions: <Widget>[
        Icon(Icons.ac_unit)
      ],
      ),
      body: getCurrentIndex(),
    );
  }

}