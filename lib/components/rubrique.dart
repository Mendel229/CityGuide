import 'package:cityguide/components/mes_couleurs.dart';
import 'package:flutter/material.dart';

import '../screens/le_menu.dart';

class rubrique extends StatelessWidget {
  final Icon icone;
  final String text;
  final Widget direct;
  rubrique({super.key, required this.icone, required this.text, required this.direct});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icone,
      title: Text(text),
      hoverColor: Config.colors.couleur6,
      onTap: ()  {
        Navigator.push(
        context, MaterialPageRoute (builder:(context)=>direct),
        );
      },
    );
  }
}
