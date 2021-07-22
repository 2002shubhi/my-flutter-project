import 'package:flutter/material.dart';
import 'package:quizzler/modelscreen.dart';

import 'ResultScreen.dart';

class firstScreen extends StatefulWidget {
  @override
  _firstScreenState createState() => _firstScreenState();
}

class _firstScreenState extends State<firstScreen> {
  double a_1 = 1;

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
         backgroundImage: NetworkImage("https://survicate.com/wp-content/uploads/2019/12/measuring-customer-satisfaction.png") ),
        SizedBox(
          height: 8,
        ),

        Text("Because we care about your satisfaction", style: TextStyle(color: Colors.teal[800], fontSize: 15, fontWeight: FontWeight.w400),),
    SizedBox(
    height: 32,
    ),

    Text("How would you rate the value for money of our products?", style: TextStyle(color: Colors.teal[900], fontSize: 24, fontWeight: FontWeight.w400),),

    Container(
    padding: EdgeInsets.only(left: 16, right: 16),
    child: Slider(
    min: 1,
    max: 5,
    onChanged: (a1){
    setState(() {
    a_1 = a1;
    });
    },
    value: a_1,
    divisions: 4,
    activeColor: Colors.pinkAccent,
    label: "$a_1",
    ),
    ),

    Text("$a_1", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w900),),

    SizedBox(height: 24,),

    Container(
    child: TextButton(
      child: Text('Next',style: TextStyle(color: Colors.teal[900]),),
    style: TextButton.styleFrom(
      backgroundColor: Colors.teal,
    ),
    onPressed: () {
      setState(() {
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => secondscreen(a_1: a_1),
        ));
      },


      );
    },
    ),
    ),
    ]
    ),
    ),
    ),
    );
  }
}
class secondscreen extends StatefulWidget {
  double a_1;
  secondscreen({Key key,@required this.a_1}) : super(key : key);
  @override
  _secondscreenState createState() => _secondscreenState(a_1);
}

double a_2 = 1;
class _secondscreenState extends State<secondscreen> {
  @override
  double a_1;

  _secondscreenState(this.a_1);
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
                CircleAvatar(
                    radius:100,
                    backgroundImage: NetworkImage("https://survicate.com/wp-content/uploads/2019/12/measuring-customer-satisfaction.png") ),
                SizedBox(
                  height: 8,
                ),
                SizedBox(
                  height: 8,
                ),
                Text("Because we care about your satisfaction", style: TextStyle(color: Colors.teal[800], fontSize: 15, fontWeight: FontWeight.w400),),
                SizedBox(
                  height: 32,
                ),

                Text("How would you rate your satisfaction with the delivery speed of your product?", style: TextStyle(color: Colors.teal[900], fontSize: 24, fontWeight: FontWeight.w400),),

                Container(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: Slider(
                    min: 1,
                    max: 5,
                    onChanged: (a2){
                      setState(() {
                        a_2 = a2;
                      });
                    },
                    value: a_2,
                    divisions: 4,
                    activeColor: Colors.pinkAccent,
                    label: "$a_2",
                  ),
                ),

                Text("$a_2 ", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w900),),

                SizedBox(height: 24,),

                Container(
                  child: TextButton(
                    child: Text('Next',style: TextStyle(color: Colors.teal[900]),),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.teal,
                    ),
                    onPressed: () {
                      setState(() {
                        a_2 = a_2+a_1;
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => thirdscreen(a_2: a_2)
                        ));
                      },


                      );
                    },
                  ),
                ),
              ]
          ),
        ),
      ),
    );
  }
}
class thirdscreen extends StatefulWidget {
  double a_2;
  thirdscreen({Key key,@required this.a_2}) : super(key : key);

  @override
  _thirdscreenState createState() => _thirdscreenState(a_2);
}
double a_3 = 1;
class _thirdscreenState extends State<thirdscreen> {
  double a_2;

  _thirdscreenState(this.a_2);

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
                CircleAvatar(
                    radius:100,
                    backgroundImage: NetworkImage("https://survicate.com/wp-content/uploads/2019/12/measuring-customer-satisfaction.png") ),
                SizedBox(
                  height: 8,
                ),
                SizedBox(
                  height: 8,
                ),
                Text("Because we care about your satisfaction", style: TextStyle(color: Colors.teal[800], fontSize: 15, fontWeight: FontWeight.w400),),
                SizedBox(
                  height: 32,
                ),

                Text("How satisfied are you with the condition in which your product was received?", style: TextStyle(color: Colors.teal[900], fontSize: 24, fontWeight: FontWeight.w400),),

                Container(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: Slider(
                    min: 1,
                    max: 5,
                    onChanged: (a3){
                      setState(() {
                        a_3 = a3;
                      });
                    },
                    value: a_3,
                    divisions: 4,
                    activeColor: Colors.pinkAccent,
                    label: "$a_3",
                  ),
                ),

                Text("$a_3 ", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w900),),

                SizedBox(height: 24,),

                Container(
                  child: TextButton(
                    child: Text('Next',style: TextStyle(color: Colors.teal[900]),),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.teal,
                    ),
                    onPressed: () {
                      setState(() {
                        a_3 = a_3+a_2;
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => fourthscreen(a_3:a_3),
                        ));
                      },


                      );
                    },
                  ),
                ),
              ]
          ),
        ),
      ),
    );
  }
}
class fourthscreen extends StatefulWidget {
  double a_3;
  fourthscreen({Key key,@required this.a_3}) : super(key : key);
  @override
  _fourthscreenState createState() => _fourthscreenState(a_3);
}
double a_4 = 1;
class _fourthscreenState extends State<fourthscreen> {
  double a_3;
  _fourthscreenState(this.a_3);

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
                CircleAvatar(
                    radius:100,
                    backgroundImage: NetworkImage("https://survicate.com/wp-content/uploads/2019/12/measuring-customer-satisfaction.png") ),
                SizedBox(
                  height: 8,
                ),
                SizedBox(
                  height: 8,
                ),
                Text("Because we care about your satisfaction", style: TextStyle(color: Colors.teal[800], fontSize: 15, fontWeight: FontWeight.w400),),
                SizedBox(
                  height: 32,
                ),

                Text("How responsive have we been to your questions or concerns about our products?", style: TextStyle(color: Colors.teal[900], fontSize: 24, fontWeight: FontWeight.w400),),

                Container(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: Slider(
                    min: 1,
                    max: 5,
                    onChanged: (a4){
                      setState(() {
                        a_4 = a4;
                      });
                    },
                    value: a_4,
                    divisions: 4,
                    activeColor: Colors.pinkAccent,
                    label: "$a_4",
                  ),
                ),

                Text("$a_4", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w900),),

                SizedBox(height: 24,),

                Container(
                  child: TextButton(
                    child: Text('Next',style: TextStyle(color: Colors.teal[900]),),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.teal,
                    ),
                    onPressed: () {
                      setState(() {
                        a_4 = a_4+a_3;
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => fifthscreen(a_4:a_4),
                        ));
                      },


                      );
                    },
                  ),
                ),
              ]
          ),
        ),
      ),
    );
  }
}
class fifthscreen extends StatefulWidget {
  double a_4;
  fifthscreen({Key key,@required this.a_4}) : super(key : key);
  @override
  _fifthscreenState createState() => _fifthscreenState(a_4);
}
double a_5 = 1;
class _fifthscreenState extends State<fifthscreen> {
  double a_4;

  _fifthscreenState(this.a_4);

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
                CircleAvatar(
                    radius:100,
                    backgroundImage: NetworkImage("https://survicate.com/wp-content/uploads/2019/12/measuring-customer-satisfaction.png") ),
                SizedBox(
                  height: 8,
                ),
                SizedBox(
                  height: 8,
                ),
                Text("Because we care about your satisfaction", style: TextStyle(color: Colors.teal[800], fontSize: 15, fontWeight: FontWeight.w400),),
                SizedBox(
                  height: 32,
                ),

                Text("How likely are you to recommend our app to a friend or colleague?", style: TextStyle(color: Colors.teal[900], fontSize: 24, fontWeight: FontWeight.w400),),

                Container(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: Slider(
                    min: 1,
                    max: 5,
                    onChanged: (a5){
                      setState(() {
                        a_5 = a5;
                      });
                    },
                    value: a_5,
                    divisions: 4,
                    activeColor: Colors.pinkAccent,
                    label: "$a_5",
                  ),
                ),

                Text("$a_5", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w900),),

                SizedBox(height: 24,),

                Container(
                  child: TextButton(
                    child: Text('Next',style: TextStyle(color: Colors.teal[900]),),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.teal,
                    ),
                    onPressed: () {
                      setState(() {
                        a_5 = a_5+a_4;
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => sixthscreen(a_5:a_5),
                        ));
                      },


                      );
                    },
                  ),
                ),
              ]
          ),
        ),
      ),
    );
  }
}
class sixthscreen extends StatefulWidget {
  double a_5;
  sixthscreen({Key key,@required this.a_5}) : super(key : key);
  @override
  _sixthscreenState createState() => _sixthscreenState(a_5);
}
double a_6 = 1;
double r=1;
modelscreen _model;
class _sixthscreenState extends State<sixthscreen> {
  double a_5;

  _sixthscreenState(this.a_5);

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
                CircleAvatar(
                    radius:100,
                    backgroundImage: NetworkImage("https://survicate.com/wp-content/uploads/2019/12/measuring-customer-satisfaction.png") ),
                SizedBox(
                  height: 8,
                ),
                SizedBox(
                  height: 8,
                ),
                Text("Because we care about your satisfaction", style: TextStyle(color: Colors.teal[800], fontSize: 15, fontWeight: FontWeight.w400),),
                SizedBox(
                  height: 32,
                ),

                Text("How likely are you to shop with us again?", style: TextStyle(color: Colors.teal[900], fontSize: 24, fontWeight: FontWeight.w400),),

                Container(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: Slider(
                    min: 1,
                    max: 5,
                    onChanged: (a6){
                      setState(() {
                        a_6 = a6;
                      });
                    },
                    value: a_6,
                    divisions: 4,
                    activeColor: Colors.pinkAccent,
                    label: "$a_6",
                  ),
                ),

                Text("$a_6", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w900),),

                SizedBox(height: 24,),

                Container(
                  child: TextButton(
                    child: Text('Next',style: TextStyle(color: Colors.teal[900]),),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.teal,
                    ),
                    onPressed: () {
                      setState(() {
                        a_6 = a_6+a_5;
    r = a_6;
    if(r >= 1 && r <= 10){
    _model = modelscreen(r: r, a:"https://www.kindpng.com/picc/m/462-4626971_emote-sad-face-frown-icon-hd-png-download.png",   comments: "We are sorry for the inconvenience.", c: const Color(0xFFEF5350) );
    }else if(r >= 11 && r <= 20){
    _model = modelscreen(r: r, a:"https://image.shutterstock.com/image-vector/yellow-emoji-neutral-face-260nw-1299846898.jpg"  ,comments: "Hope we serve you better next time.",c: const Color(0xFFFFEE58) );
    }else if(r >= 21 && r <= 30){
    _model = modelscreen(r: r, a:"data:image/jpeg;base64,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", comments: "We hope you come back next time.", c:const Color(0xFF66BB6A) );
    }
    });
    Navigator.push(context, MaterialPageRoute(
    builder: (context) => ResultScreen(model: _model,)
    ));
    },


    ),
  ),
  ]
  ),
  ),
  ),
  );
}
}






