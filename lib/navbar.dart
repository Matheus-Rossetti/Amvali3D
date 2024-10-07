import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      onDestinationSelected: (int index) {
        setState(() {
          currentPageIndex = index;
        });
      },
      backgroundColor: HexColor('#dec679'),
      height: 70,
      selectedIndex: currentPageIndex,
      destinations: [
        NavigationDestination(
            icon: Icon(Icons.auto_awesome_mosaic), label: 'Projetos'),
        NavigationDestination(icon: Icon(Icons.abc), label: 'Notas'),
        NavigationDestination(icon: Icon(Icons.person), label: 'Conta'),
      ],
    );
  }
}
