import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
void main() {
  runApp(MaterialApp(
    home: Scaffold(
    appBar: AppBar(
      title: Text('My App'),
      backgroundColor: Colors.purple,

    ),
    body: Column(
      children: [
        Text('  Calculate your',
        style: TextStyle(
          fontSize: 40.0,
        ),
        ),
       Container(
         color: Colors.indigo,
         padding: EdgeInsets.all(20.0),
         margin: EdgeInsets.fromLTRB(50,50,50,50),
             child: Text('AGE',
             style: TextStyle(
               fontSize: 20.0,
             ),),
           ),
        Container(
          margin: EdgeInsets.fromLTRB(20, 70, 70, 0),
          child: Text('IN YEARS,MONTH,DAYS,MINUTES',
          style: TextStyle(
            fontSize: 20.0
          ),),
        ),
        FlatButton(onPressed:  (){},
            color: Colors.purple,
            child: Text('DATE PIKER',
            style: TextStyle(
              fontSize: 17.0,
            ),))
       ],
      ),
    ),
    ),);

}
