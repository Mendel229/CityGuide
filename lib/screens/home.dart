import 'package:cityguide/components/cadre_sug.dart';
import 'package:cityguide/components/menu.dart';
import 'package:cityguide/screens/le_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../components/cadre.dart';
import '../components/carossel.dart';
import '../components/mes_couleurs.dart';
import '../components/mes_fontions.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  bool _voirPlus = false;
  final String _text =
      "      Cotonou est la capitale économique et la plus grande ville du Bénin avec 1 228 667 habitants en 20212. Elle abrite aussi de nombreux services gouvernementaux et diplomatiques. Cotonou est connue dans toute l'Afrique de l'Ouest pour son marché international de 20 hectares (Dantokpa), le plus grand marché d'Afrique de l'Ouest, ses Zémidjans (motos-taxis) et un marché secondaire, Missebo, situé à quelques mètres du marché Dantokpa. Le nom Kútɔ̀nú signifie « embouchure du fleuve de la mort » en fon-gbe3. Ses habitants sont appelés les Cotonois et les Cotonoises.";

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
          actions: [
            IconButton(
              icon: Icon(Icons.location_on),
              onPressed: () {

              },
            ),
          ],
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
                    image: AssetImage('lib/assets/images/Universités/UATM/aah.jpg'),
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
                      "Mi Kwabo do COTONOU",
                      style: TextStyle(
                          color: Config.colors.couleur1,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                    Text("La capitale économique du Bénin",
                        style: TextStyle(color: Colors.black54, fontSize: 12)),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      _voirPlus ? _text : _text.substring(0, 85) + '...',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _voirPlus = !_voirPlus;
                        });
                      },
                      child: Text(
                        _voirPlus ? 'Voir moins' : 'Voir plus...',
                        style: TextStyle(color: Colors.blue, fontSize: 12),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nos suggestions",
                      style: TextStyle(
                          color: Config.colors.couleur1,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                      child: Container(
                        height: 210,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Cadre_sug(
                                chemin: "lib/assets/images/hotelier/Ibis Cotonou/cc.jpg",
                                text: ' Azalaï Bénin '
                            ),
                            Cadre_sug(
                                chemin: "lib/assets/images/hotelier/Tamarin Hôtel/519808276.jpg",
                                text: 'Tamarin Hôtel'
                            ),
                            Cadre_sug(
                                chemin: "lib/assets/images/Restaurant/ Face A La Mer/novotel2.jpeg",
                                text: 'Novotel Bénin'
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 20.0,
                  top: 0.0,
                  right: 20.0,
                  bottom: 0.0,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.star_border_outlined,
                      color: Colors.yellow,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Top Places",
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
              Cadre(
                  chemin: "lib/assets/images/Universités/UATM/Eat-and-Drink.jpeg",
                  sText: "2023-04-22 20:00 ",
                  text: 'Festival Eat and Drink'),
              Cadre(
                  chemin: "lib/assets/images/Universités/UATM/Gbadefe-Chill-1 (1).jpeg",
                  sText: "2023-06-24 15:00' ",
                  text: 'Gbadéfè Chill '),
              Cadre(
                  chemin: "lib/assets/images/Universités/UATM/11-mai-a-lUAC-1.jpeg",
                  sText: "2023-05-11 20:00 ",
                  text: 'Reggae party'),


            ],
          ),
        ),
      ),
    );
  }
}
