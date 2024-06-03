import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LCadre extends StatelessWidget {
  final String chemin;
  final String text;
  final String sText;
  final String localisation;

  LCadre({super.key, required this.chemin, required this.sText, required this.text, required this.localisation});

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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(15, 15, 0, 15),
              width: 75,
              height: 50,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image(image: AssetImage(chemin), fit: BoxFit.cover),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.fromLTRB(5, 10, 30, 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                    Text(sText, style: TextStyle(color: Colors.black54, fontSize: 12)),
                    Row(
                      children: [
                        Icon(Icons.location_on, color: Colors.green, size: 15),
                        SizedBox(width: 5),
                        Text(localisation, style: TextStyle(color: Colors.black54, fontSize: 12)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 10, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.green, size: 14),
                      Icon(Icons.star, color: Colors.green, size: 14),
                      Icon(Icons.star, color: Colors.green, size: 14),
                      Icon(Icons.star_border_outlined, color: Colors.green, size: 14),
                      Icon(Icons.star_border_outlined, color: Colors.green, size: 14),
                    ],
                  ),
                  SizedBox(height: 15,),
                  TextButton(
                    child: const Text('More',style: TextStyle(),),
                    onPressed: () {/* ... */},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
