import 'package:flutter/material.dart';

import 'mes_couleurs.dart';
import 'mes_fontions.dart';

class CarrouselFrame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200, // Remplacez par la hauteur souhaitée
      width: width(context),
      decoration: BoxDecoration(
        color: Config.colors.couleur9,
      ),
      child: Column(
        children: [
          Container(
            height: 120, // Hauteur de l'image (60% de la hauteur totale)
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/images/ctn/City.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Texte à gauche'),
                  Text('Texte à droite'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
