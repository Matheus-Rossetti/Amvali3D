import 'package:flutter/material.dart';

void main() => runApp(const Learn());

class Learn extends StatefulWidget {
  const Learn({super.key});

  @override
  State<Learn> createState() => _LearnState();
}

class _LearnState extends State<Learn> {
  Object? droppedItem;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: DragTarget(onAcceptWithDetails: (data) {
          setState(() {
            droppedItem = data;
          });
        }, builder: (context, candidateData, rejectedData) {
          return Center(
            child: Draggable(
              feedback: Container(
                height: 100,
                width: 100,
                color: Colors.cyan.withOpacity(0.5),
                child: const Center(child: Text('Arrastando...')),
              ),
              child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.cyan,
                  child: const Center(child: Text('Me arraste!'))),
            ),
          );
        }),
      ),
    );
  }
}
