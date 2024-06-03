import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cadre extends StatelessWidget {
  final String chemin;
  final String text;
  final String sText;

  Cadre({super.key, required this.chemin, required this.sText, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 20.0,
        top: 10.0,
        right: 20.0,
        bottom: 10.0,
      ),
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image(
                      image: AssetImage(chemin),
                      width: 50, // Adjust width as needed
                      height: 50, // Adjust height as needed
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 10), // Add some space between the image and the text
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          text,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(sText),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.green.withOpacity(0.6),
                        Colors.green.withOpacity(0.7),
                        Colors.green.withOpacity(0.3),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.transparent, // Ensures the gradient is visible
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    ),
                    child: const Text('En savoir plus'),
                    onPressed: () {/* ... */},
                  ),
                ),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
