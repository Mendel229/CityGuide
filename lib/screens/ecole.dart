import 'package:flutter/material.dart';

import '../components/carte_news.dart';
import '../components/listCarte.dart';
import '../components/menu.dart';
import '../components/mes_couleurs.dart';
import '../components/mes_fontions.dart';

class Ecole extends StatefulWidget {
  const Ecole({super.key});

  @override
  State<Ecole> createState() => _EcoleState();
}

class _EcoleState extends State<Ecole> {
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
                    image: AssetImage('lib/assets/images/Universités/UATM/DSC00040-scaled.jpg'),
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
                      "Universités & Etablissements",
                      style: TextStyle(
                          color: Config.colors.couleur1,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                    Text("Ensemble pour une relève de qualité.",
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
                    image: AssetImage('lib/assets/images/Universités/UATM/images (3).jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("UNIVERSITES", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                    Text("05", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                  ],
                ),
              ),

              Center(
                child: Column(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          CarteNews(
                              chemin: "lib/assets/images/Universités/UATM/download (4).jpeg",
                              text: 'EPITECH'
                          ),
                          CarteNews(
                              chemin: "lib/assets/images/Universités/UATM/download (5).jpeg",
                              text: 'ENEAM'
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          CarteNews(
                              chemin: "lib/assets/images/Universités/UATM/DSC00019-scaled.jpg",
                              text: 'UATM-GASA Formation'
                          ),
                          CarteNews(
                              chemin: "lib/assets/images/Universités/UATM/images (6).jpeg",
                              text: 'Les Cours SONOU'
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [

                          CarteNews(
                              chemin: "lib/assets/images/Universités/UATM/download (1).jpeg",
                              text: 'HECM'
                          ),
                        ],
                      ),
                    ),


                    CarteNews(
                        chemin: "lib/assets/images/Universités/UATM/images.jpeg",
                        text: 'Pigier'
                    ),
                    CarteNews(
                        chemin: "lib/assets/images/Universités/UATM/download (2).jpeg",
                        text: 'ISM Adonai'
                    ),
                  ],
                ),
              ),





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
                    image: AssetImage('lib/assets/images/Universités/UATM/images (1).jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("ETABLISSEMENT", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                    Text("05", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                  ],
                ),
              ),

              Center(
                child: Column(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          CarteNews(
                              chemin: "lib/assets/images/Universités/UATM/download (6).jpeg",
                              text: 'Notre Dame des Apôtres'
                          ),
                          CarteNews(
                              chemin: "lib/assets/images/Universités/UATM/download (14).jpeg",
                              text: ' La Rosse'
                          ),
                        ],
                      ),
                    ),

                    Container(
                      child: Column(
                        children: [
                          CarteNews(
                              chemin: "lib/assets/images/Universités/UATM/download (9).jpeg",
                              text: 'CEG Gbegamey'
                          ),
                          CarteNews(
                              chemin: "lib/assets/images/Universités/UATM/download (11).jpeg",
                              text: "CEG L'OCEAN"
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          CarteNews(
                              chemin: "lib/assets/images/Universités/UATM/download (12).jpeg",
                              text: 'CEG DANTOKPA'
                          ),
                          CarteNews(
                              chemin: "lib/assets/images/Universités/UATM/download (13).jpeg",
                              text: 'CEG Zogbo'
                          ),
                        ],
                      ),
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
