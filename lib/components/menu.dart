import 'package:cityguide/components/mes_couleurs.dart';
import 'package:cityguide/components/rubrique.dart';
import 'package:cityguide/screens/ecole.dart';
import 'package:cityguide/screens/evenements.dart';
import 'package:cityguide/screens/hopital.dart';
import 'package:cityguide/screens/marches.dart';
import 'package:cityguide/screens/news.dart';
import 'package:cityguide/screens/restaurant.dart';
import 'package:cityguide/screens/tourist.dart';
import 'package:flutter/material.dart';

import '../screens/home.dart';
import '../screens/hotel.dart';
import 'mes_fontions.dart';

class Menu extends StatelessWidget {
  Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: width(context),
                  height: 56,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Config.colors.couleur11,
                        Config.colors.couleur10,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("City Guide", style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white, fontSize: 20),)
                    ],
                  ),
                )
              ],
            ),
          ),
          rubrique(icone: Icon(Icons.home_outlined), text: "Accueil", direct: Home(),),
          rubrique(icone: Icon(Icons.newspaper_outlined), text: "Actualités", direct: News(),),
          rubrique(icone: Icon(Icons.event), text: "Evènements", direct: Evenements(),),
          rubrique(icone: Icon(Icons.table_restaurant_outlined), text: "Sites touristiques", direct: Tourist(),),
          rubrique(icone: Icon(Icons.food_bank_outlined), text: "Restaurant" , direct: Restaut(),),
          rubrique(icone: Icon(Icons.hotel), text: "Hôtels" , direct: Hotel(),),
          rubrique(icone: Icon(Icons.store_outlined), text: "Marchés" , direct: Market(),),
          rubrique(icone: Icon(Icons.local_hospital_outlined), text: "Hôpital & Pharmacies" , direct: Hopital(),),
          rubrique(icone: Icon(Icons.school_outlined), text: "Universités & Etablissements", direct: Ecole(),),
          ],
      ),
    );
  }
}
