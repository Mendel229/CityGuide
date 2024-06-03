import 'package:cityguide/components/listCarte.dart';
import 'package:flutter/material.dart';

import '../components/menu.dart';
import '../components/mes_couleurs.dart';

class Hotel extends StatefulWidget {
  const Hotel({super.key});

  @override
  State<Hotel> createState() => _HotelState();
}

class _HotelState extends State<Hotel> {
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
                    image: AssetImage('lib/assets/images/Restaurant/ Face A La Mer/sofitel_cotonou.jpg'),
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
                      "Hôtels",
                      style: TextStyle(
                          color: Config.colors.couleur1,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                    Text("La capitale économique du Bénin",
                        style: TextStyle(color: Colors.black54, fontSize: 12)),
                  ],
                ),
              ),
              LCadre(chemin: "lib/assets/images/Restaurant/ Face A La Mer/novotel2.jpeg", sText: "Hôtel", text: "Novotel", localisation: "Marina",),
              LCadre(chemin: "lib/assets/images/hotelier/Golden Tulip Le Diplomate/101555952.jpg", sText: "Hôtel", text: "Golden Tulip", localisation: "Marina",),
              LCadre(chemin: "lib/assets/images/hotelier/Benin_Royal_Hotel/65313714.jpg", sText: "Hôtel", text: "Bénin Royal", localisation: "Maro",),
              LCadre(chemin: "lib/assets/images/hotelier/Ibis Cotonou/255135959.jpg", sText: "Hôtel", text: "Ibis", localisation: "Marina",),
              LCadre(chemin: "lib/assets/images/hotelier/Tamarin Hôtel/519808276.jpg", sText: "Hôtel", text: "Tamarin", localisation: "Rue 231",),
              LCadre(chemin: "lib/assets/images/Restaurant/ Face A La Mer/77.jpg", sText: "Hôtel", text: "Du Lac", localisation: "Bel Air",),
              LCadre(chemin: "lib/assets/images/hotelier/Ibis Cotonou/dd.jpg", sText: "Hôtel", text: "Noahgarde", localisation: "Gbegamy",),
              LCadre(chemin: "lib/assets/images/hotelier/Ibis Cotonou/cc.jpg", sText: "Hôtel", text: "Azalaï", localisation: "Xwlacodji",),
              ],
          ),
        ),
      ),
    );
  }
}
