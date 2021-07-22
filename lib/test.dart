import 'package:flutter/material.dart';


class testscreen extends StatelessWidget {


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
    Text("test"),


          ],
        ),
    )
    ),
    );

  }
}


