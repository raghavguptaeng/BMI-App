import 'tellBmi.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'cardBody.dart';
import 'Constants.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  Color malecardcolor = Color(inactivecardcolor);
  Color femalecardcolor = Color(inactivecardcolor);
  int height = 180;
  // list structure = [gender,height,weight,age]
  List dataForProcessing = [0, 0, 0, 0, 0];
  int age = 30;
  int weight = 50;

  // 1 = male and 0 = female
  void updatecolour(int gender) {
    if (gender == 1) {
      if (malecardcolor == Color(inactivecardcolor)) {
        malecardcolor = Color(backgroundColor);
        femalecardcolor = Color(inactivecardcolor);
      } else {
        malecardcolor = Color(inactivecardcolor);
        femalecardcolor = Color(backgroundColor);
      }
    } else {
      if (femalecardcolor == Color(inactivecardcolor)) {
        femalecardcolor = Color(backgroundColor);
        malecardcolor = Color(inactivecardcolor);
      } else {
        femalecardcolor = Color(inactivecardcolor);
        malecardcolor = Color(backgroundColor);
      }
    }
    dataForProcessing[0] = gender;
  }
  // 1 = male and 0 = female
  void updateAge(int type) {
    if (type == 1) if (age > 99) {
      age = 99;
    } else
      age++;
    else {
      if (age < 19) {
        age = 18;
      } else
        age--;
    }
    dataForProcessing[4] = age;
  }
  // 1 = male and 0 = female
  void updateWeight(int type) {
    if (type == 1)
      weight++;
    else {
      if (weight < 29) {
        weight = 28;
      } else
        weight--;
    }
    dataForProcessing[3] = weight;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("BMI CALCULATOR")),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // gender Selection
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updatecolour(1);
                          print(dataForProcessing[0]);
                        });
                      },
                      child: Card(
                        cardChild: cardBodyContent(
                          cardicon: Icon(
                            FontAwesomeIcons.mars,
                            size: 65,
                          ),
                          cardtext: Text(
                            "MALE",
                            style: textStyles,
                          ),
                        ),
                        colour_of_card: malecardcolor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updatecolour(0);
                          print(dataForProcessing[0]);
                        });
                      },
                      child: Card(
                        cardChild: cardBodyContent(
                          cardicon: Icon(
                            FontAwesomeIcons.venus,
                            size: 65,
                          ),
                          cardtext: Text(
                            "FEMALE",
                            style: textStyles,
                          ),
                        ),
                        colour_of_card: femalecardcolor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Height Slider
            Expanded(
              child: Card(
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "height",
                      style: textStyles,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: [
                        Text(
                          height.toString(),
                          style: thickText,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'cm',
                          style: textStyles,
                        )
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbColor: Color(0xFFEB1555),
                        activeTrackColor: Colors.white,
                        thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 15,
                        ),
                        overlayColor: Color(0x20EB1555),
                        overlayShape: RoundSliderOverlayShape(
                          overlayRadius: 30,
                        ),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120.00,
                        max: 220.00,
                        inactiveColor: Color(0xFF8D8E98),
                        onChanged: (double NewValue) {
                          setState(() {
                            height = NewValue.round();
                            dataForProcessing[1] = height;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                colour_of_card: Color(backgroundColor),
              ),
            ),
            // Weight and Age selector
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Card(
                      colour_of_card: Color(backgroundColor),
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Weight",
                            style: textStyles,
                          ),
                          Text(
                            weight.toString(),
                            style: thickText,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    updateWeight(1);
                                  });
                                },
                                backgroundColor: Color(cardcolor),
                                child: Icon(
                                  Icons.add,
                                  size: 40,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    updateWeight(0);
                                  });
                                },
                                backgroundColor: Color(cardcolor),
                                child: Icon(
                                  FontAwesomeIcons.minus,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      colour_of_card: Color(backgroundColor),
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Age",
                            style: textStyles,
                          ),
                          Text(
                            age.toString(),
                            style: thickText,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    updateAge(1);
                                  });
                                },
                                backgroundColor: Color(cardcolor),
                                child: Icon(
                                  Icons.add,
                                  size: 40,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    updateAge(0);
                                  });
                                },
                                backgroundColor: Color(cardcolor),
                                child: Icon(
                                  FontAwesomeIcons.minus,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // BMI calculate Button
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return tellBmi();
                },),);
              },
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 15),
                color: Color(0xFFFF0067),
                height: 60,
                child: Center(
                  child: Text(
                    "Calulate your BMI",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ),
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
