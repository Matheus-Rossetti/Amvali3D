import 'package:flutter/material.dart';
import 'package:flutter_titled_container/flutter_titled_container.dart';
import 'ver_modelo.dart'; // Make sure you have this file with WebViewScreen defined.

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Projetos',
          style: TextStyle(fontSize: 37),
        ),
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(100, (index) {
          return Center(
            child: TitledContainer(
              title: 'Projeto $index',
              textAlign: TextAlignTitledContainer.Center, // Corrected to TextAlign.center
              backgroundColor: Colors.white,
              fontSize: 20.0,
                child: Column(
                  children: [
                    const SizedBox(height: 15),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => WebViewScreen()),
                        );
                      },
                      child: Container(
                        width: 185,
                        height: 140,
                        decoration: BoxDecoration(
                          color: Colors.cyan,
                          borderRadius: BorderRadius.circular(18),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 0.1, // Adjusted value for visibility
                              blurRadius: 5,
                              offset: Offset(2, 3),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );

        }),
      ),
    );
  }
}
