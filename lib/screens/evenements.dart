

import 'package:cityguide/components/listCarte.dart';
import 'package:flutter/material.dart';

import '../components/menu.dart';
import '../components/mes_couleurs.dart';
import '../components/mes_fontions.dart';
import '../components/events.dart';

class Evenements extends StatefulWidget {
  const Evenements({super.key});

  @override
  State<Evenements> createState() => _EvenementsState();
}

class _EvenementsState extends State<Evenements> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Menu(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56.0),
        child: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Config.colors.couleur10,
                  Config.colors.couleur7,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          //actions: [
          //IconButton(
          //  icon: Icon(Icons.location_on),
          //  onPressed: () {
          //    Navigator.push(
          //            context,
          //            MaterialPageRoute(builder: (context) => MapPage()), // Assurez-vous d'utiliser MapPage ici
          //          );
          //        },
          //),
          //  ],
          title: Text(
            "City Guide",
            style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(

                padding: EdgeInsets.only(
                  left: 20.0,
                  top: 50.0,
                  right: 20.0,
                  bottom: 10.0,
                ),
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('lib/assets/images/Universités/UATM/Talon.jpeg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(0.0),
                    topRight: Radius.circular(0.0),
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('lib/assets/images/ctn/City-removebg-preview.png'),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 20.0,
                  top: 5.0,
                  right: 20.0,
                  bottom: 0.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Evènements",
                      style: TextStyle(
                          color: Config.colors.couleur1,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                    Text("Etre au coeur des évènements...",
                        style: TextStyle(color: Colors.black54, fontSize: 12)),
                  ],
                ),
              ),

              Events(chemin: 'lib/assets/images/Universités/UATM/Eat-and-Drink.jpeg', Titre: 'Fin du Festival Eat and Drink', des: '2023-04-22 20:00',),
              Events(chemin: 'lib/assets/images/Universités/UATM/Gbadefe-Chill-1 (1).jpeg', Titre: 'Gbadéfè Chill à Erevan plage de Cotonou', des: '2023-06-24 15:00',),
              Events(chemin: 'lib/assets/images/Universités/UATM/11-mai-a-lUAC-1.jpeg', Titre: 'Célébration du 11 Mai à l’UAC, Reggae party', des: '2023-05-11 20:00',),
              Events(chemin: 'lib/assets/images/Universités/UATM/Background.jpeg', Titre: 'Spéciale excursion à UCAO', des: '2023-05-06 07:00',),
              Events(chemin: 'lib/assets/images/Universités/UATM/Background-1.jpeg', Titre: 'YAO Game Party', des: '2023-04-22 20:00',),
              Events(chemin: 'lib/assets/images/Universités/UATM/mix-dj-party.jpeg', Titre: 'Mix Dj', des: '2023-04-07 19:00',),
              Events(chemin: 'lib/assets/images/ctn/art.jpeg', Titre: 'FinAB', des: '2024-04-23',),
            ],
          ),
        ),
      ),
    );
  }
}
