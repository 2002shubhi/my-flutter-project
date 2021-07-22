import 'package:flutter/material.dart';


class ResultScreen extends StatelessWidget {
  final model;




  ResultScreen({this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.teal[700],title:Text("Survey App")),
        body: SingleChildScrollView(
        child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(32),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      SizedBox(
        height: 8,
      ),
      CircleAvatar(
          radius:100,
          backgroundImage: NetworkImage(model.a) ),

      SizedBox(
    height: 25,
    ),




      Text("Your total score is ${model.r.round()}", style: TextStyle(color: Colors.red[700], fontSize: 34, fontWeight: FontWeight.w700),),
      SizedBox(
        height: 25,
      ),
    Text("${model.comments}", style: TextStyle(color: model.c, fontSize: 18, fontWeight: FontWeight.w900),),

    SizedBox(height: 75,),
    Container(
    child: FlatButton.icon(
    onPressed: (){

      Navigator.popUntil(context, (Route<dynamic> predicate) => predicate.isFirst);

    },
    icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
    label: Text("RESTART"),
    textColor: Colors.white,
    color: Colors.pink,

    ),
    width: double.infinity,
    padding: EdgeInsets.only(left: 16, right: 16),
    )

    ],
    ),
    )
    ),
    );

    }
}
