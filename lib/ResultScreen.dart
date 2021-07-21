import 'package:flutter/material.dart';


class ResultScreen extends StatelessWidget {
  final model;

  ResultScreen({this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    Text("${model.comments}", style: TextStyle(color: model.c, fontSize: 18, fontWeight: FontWeight.w500),),

    SizedBox(height: 16,),
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
