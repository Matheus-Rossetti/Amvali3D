import 'package:amvali3dviewer/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_titled_container/flutter_titled_container.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(10, (index) {
            return Center(
              child: TitledContainer(
                title: 'Projeto $index',
                textAlign: TextAlignTitledContainer.Center,
                // Corrected to TextAlign.center
                backgroundColor: Colors.transparent,
                fontSize: 20.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [
                    const SizedBox(height: 15),
                    Container(
                      width: 185,
                      height: 130,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(18),
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
                  ]),
                ),
              ),
            );
          }),
        ),
        bottomNavigationBar: NavBar());
  }
}
