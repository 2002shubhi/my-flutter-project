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
      Text('Survey App', style: TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w400),),
    Text("We care about your satisfaction", style: TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w400),),
    SizedBox(
    height: 32,
    ),

    Text("How would you rate the value for money of our products?", style: TextStyle(color: Colors.grey, fontSize: 24, fontWeight: FontWeight.w400),),

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
    activeColor: Colors.pink,
    label: "$a_1",
    ),
    ),

    Text("$a_1", style: TextStyle(color: Colors.red, fontSize: 18, fontWeight: FontWeight.w900),),

    SizedBox(height: 24,),

    Container(
    child: TextButton(
      child: Text('Next'),
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
                Text("We care about your satisfaction", style: TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w400),),
                SizedBox(
                  height: 32,
                ),

                Text("How would you rate your satisfaction with the delivery speed of your product?", style: TextStyle(color: Colors.grey, fontSize: 24, fontWeight: FontWeight.w400),),

                Container(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: Slider(
                    min: 1,
                    max: 5,
                    onChanged: (a2){
                      setState(() {
                        a_2 = a2+a_1;
                      });
                    },
                    value: a_2,
                    divisions: 4,
                    activeColor: Colors.pink,
                    label: "$a_2",
                  ),
                ),

                Text("$a_2 cm", style: TextStyle(color: Colors.red, fontSize: 18, fontWeight: FontWeight.w900),),

                SizedBox(height: 24,),

                Container(
                  child: TextButton(
                    child: Text('Next'),
                    onPressed: () {
                      setState(() {
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
                Text("We care about your satisfaction", style: TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w400),),
                SizedBox(
                  height: 32,
                ),

                Text("How satisfied are you with the condition in which your product was received?", style: TextStyle(color: Colors.grey, fontSize: 24, fontWeight: FontWeight.w400),),

                Container(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: Slider(
                    min: 1,
                    max: 5,
                    onChanged: (a3){
                      setState(() {
                        a_3 = a3+a_2;
                      });
                    },
                    value: a_3,
                    divisions: 4,
                    activeColor: Colors.pink,
                    label: "$a_3",
                  ),
                ),

                Text("$a_3 ", style: TextStyle(color: Colors.red, fontSize: 18, fontWeight: FontWeight.w900),),

                SizedBox(height: 24,),

                Container(
                  child: TextButton(
                    child: Text('Next'),
                    onPressed: () {
                      setState(() {
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
                Text("We care about your satisfaction", style: TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w400),),
                SizedBox(
                  height: 32,
                ),

                Text("How responsive have we been to your questions or concerns about our products?", style: TextStyle(color: Colors.grey, fontSize: 24, fontWeight: FontWeight.w400),),

                Container(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: Slider(
                    min: 1,
                    max: 5,
                    onChanged: (a4){
                      setState(() {
                        a_4 = a4+a_3;
                      });
                    },
                    value: a_4,
                    divisions: 4,
                    activeColor: Colors.pink,
                    label: "$a_4",
                  ),
                ),

                Text("$a_4", style: TextStyle(color: Colors.red, fontSize: 18, fontWeight: FontWeight.w900),),

                SizedBox(height: 24,),

                Container(
                  child: TextButton(
                    child: Text('Next'),
                    onPressed: () {
                      setState(() {
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
                Text("We care about your satisfaction", style: TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w400),),
                SizedBox(
                  height: 32,
                ),

                Text("How likely are you to recommend our app to a friend or colleague?", style: TextStyle(color: Colors.grey, fontSize: 24, fontWeight: FontWeight.w400),),

                Container(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: Slider(
                    min: 1,
                    max: 5,
                    onChanged: (a5){
                      setState(() {
                        a_5 = a5+a_4;
                      });
                    },
                    value: a_5,
                    divisions: 4,
                    activeColor: Colors.pink,
                    label: "$a_5",
                  ),
                ),

                Text("$a_5", style: TextStyle(color: Colors.red, fontSize: 18, fontWeight: FontWeight.w900),),

                SizedBox(height: 24,),

                Container(
                  child: TextButton(
                    child: Text('Next'),
                    onPressed: () {
                      setState(() {
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
                Text("We care about your satisfaction", style: TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w400),),
                SizedBox(
                  height: 32,
                ),

                Text("How likely are you to shop with us again?", style: TextStyle(color: Colors.grey, fontSize: 24, fontWeight: FontWeight.w400),),

                Container(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: Slider(
                    min: 1,
                    max: 5,
                    onChanged: (a6){
                      setState(() {
                        a_6 = a6+a_5;
                      });
                    },
                    value: a_6,
                    divisions: 4,
                    activeColor: Colors.pink,
                    label: "$a_6",
                  ),
                ),

                Text("$a_6", style: TextStyle(color: Colors.red, fontSize: 18, fontWeight: FontWeight.w900),),

                SizedBox(height: 24,),

                Container(
                  child: TextButton(
                    child: Text('Next'),
                    onPressed: () {
                      setState(() {
    r = a_6;
    if(r >= 1 && r <= 10){
    _model = modelscreen(r: r,  comments: "We are sorry for the inconvenience", c: const Color(0xFFEF5350) );
    }else if(r >= 11 && r <= 20){
    _model = modelscreen(r: r, comments: "Hope we serve you better next time",c: const Color(0xFFFFEE58) );
    }else if(r > 21 && r <= 30){
    _model = modelscreen(r: r,  comments: "We hope you come back next time", c:const Color(0xFF66BB6A) );
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






