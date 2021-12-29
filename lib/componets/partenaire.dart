import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class Partenaire extends StatefulWidget {
  @override
  _PartenaireState createState() => _PartenaireState();
}

class _PartenaireState extends State<Partenaire> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child : Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              InkWell(
                child: AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText(
                        "Makista, la joie de tous les instants !",
                        textStyle:
                        TextStyle(fontSize: 16, color: Colors.black)),
                    /*TyperAnimatedText("qui fait vibrer"),
          TyperAnimatedText("votre coeur"),*/
                  ],
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }

  Widget buildAnimatedText(String text) => Marquee(
    text: text,
    style: TextStyle(fontSize: 10, color: Colors.white),
    blankSpace: 90,
    velocity: 150,
    pauseAfterRound: Duration(seconds: 120),
  );
}

/*class RB extends StatefulWidget {
  const RB({Key? key}) : super(key: key);

  @override
  _RBState createState() => _RBState();
}

class _RBState extends State<RB> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 5,
        backgroundColor: Colors.white70,
        title: Image.asset(
          "assets/logo.png",
          height: 100,
          width: 130,
          fit: BoxFit.cover,
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Radio(
                value: 1,
                groupValue: _value,
                onChanged: (value) {
                  setState(() {
                    _value = _value;
                  });
                },
              ),
              SizedBox(
                width: 5.0,
              ),
              Text("Radio 1"),
            ],
          ),
          Column(
            children: [
              Radio(
                value: 2,
                groupValue: _value,
                onChanged: (value) {
                  setState(() {
                    _value = _value;
                  });
                },
              ),
              SizedBox(
                width: 5.0,
              ),
              Text("Radio 2"),
            ],
          ),
          Column(
            children: [
              Radio(
                value: 3,
                groupValue: _value,
                onChanged: (value) {
                  setState(() {
                    _value = _value;
                  });
                },
              ),
              SizedBox(
                width: 5.0,
              ),
              Text("Radio 3"),
            ],
          ),
        ],
      ),
    );
  }
}
*/