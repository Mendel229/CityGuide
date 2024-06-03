import 'package:flutter/material.dart';

import '../components/listCarte.dart';
import '../components/menu.dart';
import '../components/mes_couleurs.dart';

class Restaut extends StatefulWidget {
  const Restaut({super.key});

  @override
  State<Restaut> createState() => _RestautState();
}

class _RestautState extends State<Restaut> {
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
                    image: AssetImage('lib/assets/images/Restaurant/ Face A La Mer/fam.jpg'),
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
                      "Restaurants",
                      style: TextStyle(
                          color: Config.colors.couleur1,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                    Text("Les meilleurs plats du Bénin, d'Afrique ...",
                        style: TextStyle(color: Colors.black54, fontSize: 12)),
                  ],
                ),
              ),
              LCadre(chemin: "lib/assets/images/Restaurant/Jaaba - Grill & Bar/mathurine-notre-gerante.jpg", sText: "Restaurant", text: "Jaaba ", localisation: "2356 Rue",),
              LCadre(chemin: "lib/assets/images/Restaurant/La Gallery/de-l-art-dans-votre-assiette (2).jpg", sText: "Restaurant", text: "La Gallery", localisation: "Ganhi ",),
              LCadre(chemin: "lib/assets/images/Restaurant/ Face A La Mer/ooo.jpg", sText: "Restaurant", text: "Livingstone", localisation: "Haie vive",),
              LCadre(chemin: "lib/assets/images/Restaurant/ Face A La Mer/000.jpg", sText: "Restaurant", text: "Shamiana", localisation: "Cocotier",),
              LCadre(chemin: "lib/assets/images/Restaurant/ Face A La Mer/la-salle-du-restaurant.jpg", sText: "Restaurant", text: "L'Imprévu", localisation: "Hindous",),
              LCadre(chemin: "lib/assets/images/Restaurant/ Face A La Mer/photo0jpg.jpg", sText: "Restaurant", text: "DU LAC", localisation: "Akpakpa",),
              LCadre(chemin: "lib/assets/images/Restaurant/ Face A La Mer/logo.jpeg", sText: "Restaurant", text: "Face à la mer", localisation: "Stat Jnp",),
            ],
          ),
        ),
      ),
    );
  }
}
