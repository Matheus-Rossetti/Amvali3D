import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Login2 extends StatelessWidget {
  const Login2({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        // deixa a status bar trasnparente
        value: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
        ),
        child: Scaffold(
          body: Stack(
            children: [
              const Scaffold(backgroundColor: Colors.black),
              Stack(children: [
                Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                    colors: [Color(0xff088240), Color(0xff7eae2b)],
                    stops: [0.25, 0.75],
                    begin: Alignment(1.0, -2.0),
                    end: Alignment.bottomLeft,
                  )),
                  height: 200,
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(25, 60, 0, 0),
                    child: Text(
                      'Login',
                      style: GoogleFonts.poppins(
                          // alterar para uma custom font
                          textStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 37,
                      )),
                    ))
              ]),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                top: 130,
                child: Container(
                  height: 500,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        const SizedBox(height: 30),
                        const Row(
                          children: [
                            Text('Bem vindo!',
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        const SizedBox(height: 30),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(6)),
                            child: TextFormField(
                                decoration: const InputDecoration(
                                    hintText: 'Usuário: ',
                                    border: InputBorder.none),
                                onTapOutside: (event) => FocusScope.of(context)
                                    .requestFocus(FocusNode())),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(6)),
                            child: TextFormField(
                                obscureText: true,
                                decoration: const InputDecoration(
                                    hintText: 'senha: ',
                                    border: InputBorder.none,
                                    suffixIcon: Icon(Icons.visibility_off)),
                                onTapOutside: (event) => FocusScope.of(context)
                                    .requestFocus(FocusNode())),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
