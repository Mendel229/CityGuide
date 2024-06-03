import 'package:flutter/material.dart';

class Site extends StatefulWidget {
  final String chemin;
  final String Titre;
  final String des;
  const Site({super.key, required this.chemin, required this.Titre, required this.des});

  @override
  State<Site> createState() => _EventsState();
}

class _EventsState extends State<Site> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15), // Border radius
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.green.withOpacity(0.7),
            Colors.green.withOpacity(0.3),
            Colors.green.withOpacity(0.8),
            Colors.green.withOpacity(0.3),
          ],
        ),
        /*boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],*/
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(image: AssetImage(widget.chemin)),
              ],
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.Titre,
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                ),
                Row(
                  children: [
                    Icon(Icons.location_on,size: 16,),
                    SizedBox(width: 5), // Add some space between the icon and the text
                    Text(
                      widget.des,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
