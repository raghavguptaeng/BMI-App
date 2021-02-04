import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'cardBody.dart';
//---- initializing some constants --
const int backgroundColor = 0xFF1D1E33;

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("BMI CALCULATOR")),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Card(
                      cardChild: cardBodyContent(
                        cardicon: Icon(
                          FontAwesomeIcons.mars,
                          size: 65,
                        ),
                        cardtext: Text(
                          "MALE",
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 25,
                          ),
                        ),
                      ),
                      colour_of_card: Color(backgroundColor),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      cardChild: cardBodyContent(
                        cardicon: Icon(
                          FontAwesomeIcons.venus,
                          size: 65,
                        ),
                        cardtext: Text(
                          "FEMALE",
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 25,
                          ),
                        ),
                      ),
                      colour_of_card: Color(backgroundColor),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Card(
                colour_of_card: Color(backgroundColor),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Card(
                      colour_of_card: Color(backgroundColor),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      colour_of_card: Color(backgroundColor),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 15),
              color: Color(0xFFFF0067),
              height: 70,
              child: Center(
                  child: Text(
                "Calulate your BMI",
                style: TextStyle(
                  fontSize: 30,
                ),
              )),
            )
          ],
        ),
      ),
    );
  }
}
//-----------------------------------------------------------------
//-----------------------------------------------------------------
//-----------------------------------------------------------------
class Card extends StatelessWidget {
  final Color colour_of_card;
  final Widget cardChild;

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
