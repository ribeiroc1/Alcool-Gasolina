import 'package:flutter/material.dart';

import 'loading-button-widget.dart';

class Sucess extends StatelessWidget {
  var result = "";
  Function reset;

  Sucess({@required this.reset, @required this.result});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Text(
            result,
            style: (TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 25,
                fontFamily: "Big Shoulders Display")),
          ),
          SizedBox(
            height: 50,
          ),
          LoadingButton(
            busy: false,
            func: reset,
            text: "Calcular Novamente",
            invert: true,
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
