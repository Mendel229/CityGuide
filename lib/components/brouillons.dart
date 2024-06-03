import 'package:cityguide/components/mes_couleurs.dart';
import 'package:flutter/material.dart';

import 'mes_fontions.dart';

class brouillon extends StatelessWidget {
  const brouillon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width(context),
      height: 75,
      padding: EdgeInsets.only(
        left: 20.0,
        top: 0,
        right: 20.0,
        bottom: 0.0,
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/images/Pharmicie/Camp Guezo/PCG1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: Colors.green.withOpacity(0.5), // Couleur verte transparente
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "HOPITALE",
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              Text(
                "04",
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );

  }
}
