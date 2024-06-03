import 'package:cityguide/components/listCarte.dart';
import 'package:flutter/material.dart';

import '../components/menu.dart';
import '../components/mes_couleurs.dart';
import '../components/mes_fontions.dart';

class Hopital extends StatefulWidget {
  const Hopital({super.key});

  @override
  State<Hopital> createState() => _HopitalState();
}

class _HopitalState extends State<Hopital> {
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
                    image: AssetImage('lib/assets/images/Marché/mar/benin-avortements-clandestins.jpg'),
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
                      "Hôpitaux & Pharmacies",
                      style: TextStyle(
                          color: Config.colors.couleur1,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                    Text("h24 dispo pour vos problème de santé.",
                        style: TextStyle(color: Colors.black54, fontSize: 12)),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(
                width: width(context),
                height: 75,
                padding: EdgeInsets.only(
                  left: 20.0,
                  top: 0,
                  right: 20.0,
                  bottom: 0.0,
                ),
                decoration: BoxDecoration(
                  color: Config.colors.couleur6,
                  image: DecorationImage(
                    image: AssetImage('lib/assets/images/Pharmicie/Camp Guezo/PCG1.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("PHARMACIE", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                  Text("08", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                ],
              ),
              ),
              LCadre(chemin: "lib/assets/images/Pharmicie/Camp Guezo/2022-03-18.jpg", sText: "Pharmacie", text: "Camp Guezo", localisation: "Guezo",),
              LCadre(chemin: "lib/assets/images/Pharmicie/Sacré Coeur/20211123_202101.jpg", sText: "Pharmacie", text: "Sacré Coeur", localisation: "Sacré",),
              LCadre(chemin: "lib/assets/images/Pharmicie/Adechina/2021-02-12.jpg", sText: "Pharmacie", text: "Adechina", localisation: "Maro",),
              LCadre(chemin: "lib/assets/images/Pharmicie/Adechina/les cocotiers.jpeg", sText: "Pharmacie", text: "Les Cototiers", localisation: "Maro",),
              LCadre(chemin: "lib/assets/images/Pharmicie/Adechina/pharmacie_madone.jpeg", sText: "Pharmacie", text: "Madone", localisation: "Maro",),
              LCadre(chemin: "lib/assets/images/Pharmicie/Adechina/pharmacie_zongo.jpeg", sText: "Pharmacie", text: "Zongo", localisation: "Zongo",),
              LCadre(chemin: "lib/assets/images/Pharmicie/Adechina/bienetre.jpeg", sText: "Pharmacie", text: "Bien-être", localisation: "Maro",),

              Container(
                width: width(context),
                height: 75,
                padding: EdgeInsets.only(
                  left: 20.0,
                  top: 0,
                  right: 20.0,
                  bottom: 0.0,
                ),
                decoration: BoxDecoration(
                  color: Config.colors.couleur6,
                  image: DecorationImage(
                    image: AssetImage('lib/assets/images/Marché/mar/1563791234-healthcare-benin-news_home_highlight_2-t1563791234.webp'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("HOPITALE", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
                    Text("05", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
                  ],
                ),
              ),
              LCadre(chemin: "lib/assets/images/ctn/CNHP.jpeg", sText: "Hopitale", text: "CNHP", localisation: "Fidjrossè",),
              LCadre(chemin: "lib/assets/images/ctn/CNHU.jpeg", sText: "Hopitale", text: "CNHU", localisation: "Guezo",),
              LCadre(chemin: "lib/assets/images/ctn/anastasia.jpeg", sText: "Centre de santé", text: "Anastasia", localisation: "Akploy",),
              LCadre(chemin: "lib/assets/images/ctn/clinique_saint_jean.jpeg", sText: "Hopitale", text: "Saint Jean", localisation: "Gbega",),
              LCadre(chemin: "lib/assets/images/ctn/clinique-cooperative-sikecodji.jpg", sText: "Hopitale", text: "sikecodji", localisation: "Sikecodji",),
              ],
          ),
        ),
            ),
    );
  }
}
