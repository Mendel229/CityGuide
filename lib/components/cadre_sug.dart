import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cadre_sug extends StatelessWidget {
  final String chemin;
  final String text;


  Cadre_sug({super.key, required this.chemin, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      margin: EdgeInsets.all(10),
      child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  //Navigator push (context, MaterialPageRoute(builder: (context)= secondPage()),);
                },
                child: Image.asset(
                    chemin, height: 130,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(text),
              )
            ],
          ),

      ),
    );
  }
}
