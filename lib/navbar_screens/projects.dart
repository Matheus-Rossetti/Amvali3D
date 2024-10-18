import 'package:amvali3dviewer/navbar.dart';
import 'package:amvali3dviewer/web_view.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';



int totalCount = 5;
String user = 'Vitor';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor('#005190'),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Text(user),
            )

          ],
        ),
        bottomNavigationBar: const NavBar());
  }
}
