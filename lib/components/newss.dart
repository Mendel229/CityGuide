import 'package:flutter/material.dart';

class Newss extends StatefulWidget {
  final String chemin;
  final String Titre;
  final String des;
  const Newss({super.key, required this.chemin, required this.Titre, required this.des});

  @override
  State<Newss> createState() => _NewssState();
}

class _NewssState extends State<Newss> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15), // Border radius for the main container
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.green.withOpacity(0.6),
            Colors.green.withOpacity(0.7),
            Colors.green.withOpacity(0.3),
          ],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Ensure text is aligned to the start
              children: [
                Text(
                  widget.Titre,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  widget.des,
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(15), // Border radius for the image
            child: Image(
              image: AssetImage(widget.chemin),
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
