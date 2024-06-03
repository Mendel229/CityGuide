import 'package:cityguide/components/cadre_sug.dart';
import 'package:flutter/material.dart';

import '../components/carte_news.dart';
import '../components/menu.dart';
import '../components/mes_couleurs.dart';

class Market extends StatefulWidget {
  const Market({super.key});

  @override
  State<Market> createState() => _MarketState();
}

class _MarketState extends State<Market> {
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
                    image: AssetImage('lib/assets/images/Marché/mar/xxxx.jpg'),
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
                      "Marchés",
                      style: TextStyle(
                          color: Config.colors.couleur1,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                    Text("Nos marchés ...",
                        style: TextStyle(color: Colors.black54, fontSize: 12)),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    CarteNews(
                        chemin: "lib/assets/images/Marché/mar/images.jpeg",
                        text: 'Marché Dantokpa'
                    ),
                    CarteNews(
                        chemin: "lib/assets/images/Marché/Marché Ganhi/2018-01-09.jpg",
                        text: 'Marché Ganhi'
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    CarteNews(
                        chemin: "lib/assets/images/Marché/mar/marche-dantokpa.jpg",
                        text: 'Marché Midombo'
                    ),

                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    CarteNews(
                        chemin: "lib/assets/images/Marché/mar/download.jpeg",
                        text: 'Marché Ganhi'
                    ),
                    CarteNews(
                        chemin: "lib/assets/images/Marché/mar/425190257211001660203623.jpg",
                        text: 'Marché des arts'
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    CarteNews(
                        chemin: "lib/assets/images/Marché/mar/7564129d8e178c6b64e8eb38a8be1fc9.jpg",
                        text: 'Marche de Yénawa'
                    ),
                    CarteNews(
                        chemin: "lib/assets/images/Marché/mar/2020-07-18.jpg",
                        text: 'Marché Fifadji'
                    ),
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
