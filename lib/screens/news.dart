

import 'package:cityguide/components/carte_news.dart';
import 'package:cityguide/components/menu.dart';
import 'package:flutter/material.dart';

import '../components/cadre_sug.dart';
import '../components/mes_couleurs.dart';
import '../components/events.dart';
import '../components/newss.dart';

class News extends StatefulWidget {
  const News({super.key});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
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
                    image: AssetImage('lib/assets/images/ctn/fame.jpeg'),
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
                      "Actuallités",
                      style: TextStyle(
                          color: Config.colors.couleur1,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                    Text("Soyez au parfun des informations",
                        style: TextStyle(color: Colors.black54, fontSize: 12)),
                  ],
                ),
              ),

              Newss(chemin: "lib/assets/images/Universités/UATM/eee.jpeg", Titre: "VISITE DE LA DÉLÉGATION DE L'AMBASSADE DE L'ALLEMAGNE AU BENIN.", des: 'Le Port Autonome de Cotonou a reçu dans la matinée du jeudi 18 ...'),
              Newss(chemin: "lib/assets/images/Universités/UATM/images (18).jpeg", Titre: "Tenue du dialogue mondial de la jeunesse à Cotonou :", des: 'Le Président Patrice TALON reçoit en audience la Directrice Exécutive ...'),
              Newss(chemin: "lib/assets/images/Universités/UATM/images (19).jpeg", Titre: "INStaD - Institut National de la Statistique et de la Démographie", des: 'new Les Grands traits du Commerce Extérieur du Bénin 2021 | Tout savoir sur la gestion de la pandémie du coronavirus au Bénin |. Actualités. RAPPORT DE L ...'),
              Newss(chemin: "lib/assets/images/Universités/UATM/images (20).jpeg", Titre: "Gouvernement de la République du Bénin", des: "Toute l'actualité du Gouvernement de la République du Bénin : les actions du Gouvernement, le Président de la République, les ministères, les ministres, ..."),
              Newss(chemin: "lib/assets/images/Universités/UATM/images (21).jpeg", Titre: "Bénin : actualités, podcasts, vidéos et analyses", des: 'Lancement de la Génération éloquence et de débat du Club RFI. Le club RFI. 12/05/2024. Le club RFI Cotonou ( ...'),
              Newss(chemin: "lib/assets/images/Universités/UATM/images (22).jpeg", Titre: "La Nation Bénin - Votre journal de référence, Actualités", des: 'Actualités au Bénin, Informations au Bénin, Articles et publications du Bénin, Quotidien national du Bénin, Journaux au Bénin, International, Economie, ...'),
              Newss(chemin: "lib/assets/images/Universités/UATM/images (23).jpeg", Titre: "République du Bénin | Banque africaine de développement", des: 'République du Bénin. benin.jpg. Perspectives économiques au ... Actualités. ncer-benin-1500.jpg. Les représentants ... Cotonou – BENIN. Tél : 00 229 90 30 40 42 ...'),

            ],
          ),
        ),
      ),
    );
  }
}
