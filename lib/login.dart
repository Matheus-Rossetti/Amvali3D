import 'package:amvali3dviewer/home_screen.dart';
import 'package:amvali3dviewer/login_2.dart';
import 'package:amvali3dviewer/web_view.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        // child: OverflowBox(
        //   maxHeight: double.infinity,
        child: SingleChildScrollView(
          child: Column(children: [
            Image.asset('assets/images/login_logo.png',
                height: 250, width: 250),
            const SizedBox(height: 50),
            Container(
              width: 300,
              height: 45,
              decoration: BoxDecoration(
                  color: HexColor('#1d81c0'),
                  borderRadius: BorderRadius.circular(12)),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 7),
                  child: TextField(
                      decoration: const InputDecoration(
                          hintText: 'Usuário',
                          hintStyle: TextStyle(color: Colors.white),
                          border: InputBorder.none),
                      obscureText: false,
                      onTapOutside: (event) =>
                          FocusScope.of(context).requestFocus(FocusNode())),
                ),
              ),
            ),
            const SizedBox(height: 40),
            Container(
              width: 300,
              height: 45,
              decoration: BoxDecoration(
                  color: HexColor('#1d81c0'),
                  borderRadius: BorderRadius.circular(12)),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 7),
                  child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'Senha',
                        hintStyle: TextStyle(color: Colors.white),
                        border: InputBorder.none,
                      ),
                      obscureText: true,
                      onTapOutside: (event) =>
                          FocusScope.of(context).requestFocus(FocusNode())),
                ),
              ),
            ),
            const SizedBox(height: 50),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const WebView()));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: HexColor('#7eae2b'),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      child: const Text(
                        'Entrar como convidado',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                    child: FilledButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeScreen()));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: HexColor('#058140'),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        child: const Text(
                          'Entrar',
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                ],
              ),
            ),
            ElevatedButton(onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Login2()));
            },
                child: Text('Login2')),
            SizedBox(height: 170)
          ]),
        ),
      ),
    );
  }
}
