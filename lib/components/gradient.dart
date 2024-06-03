import 'package:cityguide/components/mes_couleurs.dart';
import 'package:flutter/material.dart';

class gradient extends StatelessWidget {
  const gradient({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Config.colors.couleur11,
          Config.colors.couleur12,
        ])
      ),
    );
  }
}
