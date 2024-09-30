import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  final user = 'user';

  @override
  Widget build(BuildContext context) {
    return Column(children: [
        SizedBox(height: 100),
        Text('Conta', style: TextStyle(fontSize: 50)),
        SizedBox(height: 40),
        Text('$user', style: TextStyle(fontSize: 40)),
      ]);
  }
}
