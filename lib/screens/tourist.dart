import 'package:cityguide/components/site.dart';
import 'package:flutter/material.dart';

import '../components/menu.dart';
import '../components/mes_couleurs.dart';

class Tourist extends StatefulWidget {
  const Tourist({super.key});

  @override
  State<Tourist> createState() => _TouristState();
}

class _TouristState extends State<Tourist> {
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
                    image: AssetImage('lib/assets/images/Universités/UATM/images (25).jpeg'),
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
                      "Sites touristiques",
                      style: TextStyle(
                          color: Config.colors.couleur1,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                    Text("De jolies sites de Cotonou à visiter absolument...",
                        style: TextStyle(color: Colors.black54, fontSize: 12)),
                  ],
                ),
              ),

              Center(
                child: Column(
                  children: [
                    Site(chemin: 'lib/assets/images/Universités/UATM/download (16).jpeg',des: 'Ave Clozel',Titre: 'Cathédrale Notre-Dame-de-Miséricorde de Cotonou',),
                    Site(chemin: 'lib/assets/images/ctn/étoileRouge.jpeg',des: 'Gbegamey',Titre: 'Etoile Rouge',),
                    Site(chemin: 'lib/assets/images/Universités/UATM/download (17).jpeg',des: 'Camp Guezo',Titre: 'Marché des Arts de Cotonou',),
                    Site(chemin: 'lib/assets/images/Universités/UATM/download (18).jpeg',des: 'Fidjrossè',Titre: 'Plage de Fidjrossè',),
                    Site(chemin: 'lib/assets/images/Universités/UATM/download (19).jpeg',des: 'Maison du Peuple',Titre: 'CanalOlympia Wologuèdè',) ,
                    Site(chemin: 'lib/assets/images/Universités/UATM/download (20).jpeg',des: 'Palais des Congrès',Titre: 'Palais des Congrès',),
                    Site(chemin: 'lib/assets/images/Universités/UATM/download (21).jpeg',des: "Rue 2863, Stade de l'amitié,",Titre: "Stade de l'Amitié Général Mathieu Kerekou",),
                    Site(chemin: 'lib/assets/images/Universités/UATM/images (24).jpeg',des: "Rte De L'Aéroport",Titre: 'Place du Souvenir, ex Place des Martyrs Cotonou',),
                    Site(chemin: 'lib/assets/images/Universités/UATM/download (23).jpeg',des: 'Boulevard de la Marina, Cotonou',Titre: "Place de l'amazone",),
                    Site(chemin: 'lib/assets/images/Universités/UATM/download (24).jpeg',des: 'Erevan fidjrosè',Titre: "Statue Bio Guerra-Cotonou airport",),

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
