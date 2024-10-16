import 'package:amvali3dviewer/navbar.dart';
import 'package:amvali3dviewer/web_view.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';



int totalCount = 5;


class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor('#005190'),
        body: CustomScrollView(
          slivers: [
            ListView(
              children: List.generate(totalCount, (index) {
                return Center(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const WebView()));
                    },
                    child: Container(
                      width: double.infinity,
                      height: 230,
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
                      child: Image.network("http://20.201.114.134/preview/32b1a0c3bd/commits/446108e3a7"),
                    ),
                  ),
                ));
              }),
            ),
          ],
        ),
        bottomNavigationBar: const NavBar());
  }
}
