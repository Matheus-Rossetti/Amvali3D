import 'package:amvali3dviewer/navbar.dart';
import 'package:amvali3dviewer/web_view.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor('#005190'),
        body: ListView(
          children: List.generate(10, (index) {
            return Center(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => WebView()));
                },
                child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 0.1,
                        // Adjusted value for visibility
                        blurRadius: 5,
                        offset: Offset(2, 3),
                      ),
                    ],
                  ),
                ),
              ),
            ));
          }),
        ),
        bottomNavigationBar: NavBar());
  }
}
