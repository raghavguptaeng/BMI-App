import 'package:flutter/material.dart';

class cardBodyContent extends StatelessWidget {

  cardBodyContent({@required this.cardtext , @required this.cardicon});

  final Icon cardicon;
  final Text cardtext;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        cardicon,
        SizedBox(
          height: 15,
        ),
        cardtext,
      ],
    );
  }
}