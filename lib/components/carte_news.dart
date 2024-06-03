import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'mes_fontions.dart';

class CarteNews extends StatelessWidget {
  final String chemin;
  final String text;

  CarteNews({super.key, required this.chemin, required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(

        margin: EdgeInsets.all(15),

        child: Container(
          alignment: Alignment.center,
          width: 270,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.green.withOpacity(0.3),
                Colors.green.withOpacity(0.5),
                Colors.green.withOpacity(0.3),
              ], // Dégradé de transparent à vert
            ),
            borderRadius: BorderRadius.circular(10.0), // Bords arrondis
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Image.asset(chemin),
              SizedBox(height: 10,),

              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(text, style: TextStyle(fontWeight: FontWeight.bold),),
                    TextButton(
                      child: const Text('Voir plus'), onPressed: () {/* ... */},),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
