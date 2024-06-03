import 'package:flutter/material.dart';
import '../components/menu.dart';

class Le_menu extends StatefulWidget {
  const Le_menu({super.key});

  @override
  State<Le_menu> createState() => _le_menuState();
}

class _le_menuState extends State<Le_menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Menu()
          ],
        ),
      ),
    );
  }
}
