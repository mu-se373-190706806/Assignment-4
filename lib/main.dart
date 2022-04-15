import 'package:flutter/material.dart';

void main() => runApp(appmaterial());



class appmaterial extends StatelessWidget {
  const appmaterial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: appstate(),
    );
  }
}
class appstate extends StatefulWidget {
  @override
  State<appstate> createState() => _appstateState();
}

class _appstateState extends State<appstate> {
 DateTime _dateTime= DateTime(2022,1,1);
void setdata(){
  setState(() {
    showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(1950), lastDate: DateTime(2222)).
    then((date){
      setState(() {
        _dateTime = date!;
      });
    });

  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple,
        title: Text("age calculator app"),
      ),
      body: Center(
        child: Column(mainAxisAlignment:MainAxisAlignment.spaceEvenly,children: [
          Text("calculate your",style: TextStyle(fontSize: 20,color: Colors.amber),),
          Container(color: Colors.greenAccent,padding: EdgeInsets.all(20), child: Text("age")),
          Text("IN YEARS,MOUNTHS,DAYS",style: TextStyle(fontSize: 25,color: Colors.amber),),
          RaisedButton(child:Text("date picker",style: TextStyle(fontSize: 20,color: Colors.white),),color:Colors.purple,onPressed: setdata),
          Text("${_dateTime.year}/${_dateTime.month}/${_dateTime.day}",style: TextStyle(fontSize: 20,color: Colors.deepOrange),)
        ],)
      )

      );
  }
}







