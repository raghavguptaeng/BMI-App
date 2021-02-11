import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Constants.dart';

class tellBmi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 25),
                child: Text(
                  "Your Result",
                  style: TextStyle(
                    fontSize: 55,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Card(
                  colour_of_card: Color(backgroundColor),
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Normal",
                        style: thin,
                      ),
                      Text(
                        "56.6",
                        style: thickText,
                      ),
                      Text(
                        "kadjfhksdjhfkshjdf",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )
                    ],
                  )),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: bottombutton(),
            ),
          ],
        ),
      ),
    );
  }
}

class bottombutton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 15),
      color: Color(0xFFFF0067),
      height: 60,
      child: Center(
        child: Text(
          "Recheck!",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final Color colour_of_card;
  final Widget cardChild;

  // ignore: non_constant_identifier_names
  Card({@required this.colour_of_card, this.cardChild});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour_of_card,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
