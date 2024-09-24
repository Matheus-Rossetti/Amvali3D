import 'package:amvali3dviewer/backend.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'backend.dart';

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
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Bem vindo!',
                              style: TextStyle(
                                fontSize: 30,
                                // fontFamily: 'Ezra',
                                fontWeight: FontWeight.w800,
                                // color: HexColor('#005190')
                              ),
                            ),
                            AmvaliLogo()
                          ],
                        ),
                        const SizedBox(height: 15),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(6)),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(9, 2, 0, 0),
                              child: TextFormField(
                                  decoration: const InputDecoration(
                                      hintText: 'Usuário: ',
                                      border: InputBorder.none),
                                  onTapOutside: (event) =>
                                      FocusScope.of(context)
                                          .requestFocus(FocusNode())),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(6)),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 4, 0, 0),
                              child: TextFormField(
                                  obscureText: true,
                                  decoration: const InputDecoration(
                                      hintText: 'Senha: ',
                                      border: InputBorder.none,
                                      suffixIcon: Icon(Icons.visibility_off)),
                                  onTapOutside: (event) =>
                                      FocusScope.of(context)
                                          .requestFocus(FocusNode())),
                            ),
                          ),
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const CheckBox(),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Esqueceu sua senha?',
                                    style: TextStyle(
                                        color: HexColor("#088240"),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                  ))
                            ]),
                        SizedBox(height: 15),
                        Container(
                          width: double.infinity,
                          height: 45,
                          decoration: BoxDecoration(
                              color: HexColor('#007c3d'),
                              borderRadius: BorderRadius.circular(4)),
                          child: TextButton(
                              onPressed: null,
                              child: Text(
                                "Entrar",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: double.infinity,
                          height: 45,
                          decoration: BoxDecoration(
                              color: HexColor('#005190'),
                              borderRadius: BorderRadius.circular(4)),
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Entrar como convidado",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
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

class CheckBox extends StatefulWidget {
  const CheckBox({super.key});

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value!;
              });
            }),
        const Text('Lembrar de mim?')
      ],
    );
  }
}

class AmvaliLogo extends StatelessWidget {
  const AmvaliLogo({super.key});

  final size = 36.0;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      const SizedBox(
        height: 46,
        width: 164,
      ),
      Positioned(
        right: 80,
        child: Text('Am',
            style: TextStyle(
                color: HexColor('#005190'),
                fontSize: size,
                fontWeight: FontWeight.bold,
                fontFeatures: const <FontFeature>[FontFeature.alternative(0)],
                fontFamily: 'Ezra',
                letterSpacing: -3)),
      ),
      Positioned(
        left: 82,
        child: Stack(
          children: [
            Text('vali',
                style: TextStyle(
                    fontSize: size,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 3
                      ..color = Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Ezra',
                    letterSpacing: -3)),
            Text('vali',
                style: TextStyle(
                    fontSize: size,
                    color: HexColor('#005190'),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Ezra',
                    letterSpacing: -3)),
          ],
        ),
      ),
    ]);
  }
}
