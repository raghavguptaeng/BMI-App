import 'package:flutter/material.dart';
import 'input_screen.dart';
void main() {
  runApp(BMI_app_body());
}
class BMI_app_body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0XFF11163A),
          textTheme: TextTheme(
            // ignore: deprecated_member_use
              body1: TextStyle(
                  color: Colors.white
              )
          ),
          scaffoldBackgroundColor: Color(0XFF0D1235),
      ),
      home: Body(), //--- makes our app multi screen
    );
  }
}

