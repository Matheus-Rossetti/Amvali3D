import 'package:flutter/material.dart';
import 'package:flutter_3d_controller/flutter_3d_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amvali 3D viewer Alpha',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 116, 173, 50)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Amvali 3D viewer Alpha'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Flutter3DController controller = Flutter3DController();
  String? chosenAnimation;
  String? chosenTexture;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 255, 255, 255),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Flutter3DViewer(
          //If you don't pass progressBarColor the color of defaultLoadingProgressBar will be grey.
          //You can set your custom color or use [Colors.transparent] for hiding loadingProgressBar.
            controller: controller,
            progressBarColor: Colors.cyan,
            src:
            //'lib/assets/DamagedHelmet.glb',

            'assets/models/AMV-SH-DE-EDF-0038-PB-R00-3D-Quadra_poliesportiva.glb',


          //'https://modelviewer.dev/shared-assets/models/Astronaut.glb', // 3D model from URL
        ),
      ),
    );
  }

  Future<String?> showPickerDialog(List<String> inputList,
      [String? chosenItem]) async {
    return await showModalBottomSheet<String>(
        context: context,
        builder: (ctx) {
          return SizedBox(
            height: 250,
            child: ListView.separated(
              itemCount: inputList.length,
              padding: const EdgeInsets.only(top: 16),
              itemBuilder: (ctx, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pop(context, inputList[index]);
                  },
                  child: Container(
                    height: 50,
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('${index + 1}'),
                        Text(inputList[index]),
                        Icon(chosenItem == inputList[index]
                            ? Icons.check_box
                            : Icons.check_box_outline_blank)
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (ctx, index) {
                return const Divider(
                  color: Colors.grey,
                  thickness: 0.6,
                  indent: 10,
                  endIndent: 10,
                );
              },
            ),
          );
        });
  }
}
