import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();

class LoginTest extends StatefulWidget {
  const LoginTest({super.key});

  @override
  State<LoginTest> createState() => _LoginTestState();
}

class _LoginTestState extends State<LoginTest>
    with SingleTickerProviderStateMixin {
  bool _isLogin = true;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        // deixa a status bar trasnparente
        value: const SystemUiOverlayStyle(
          systemNavigationBarColor: Colors.white,
          statusBarColor: Colors.transparent,
        ),
        child: Scaffold(
          body: Stack(
            children: [
              const Scaffold(backgroundColor: Colors.black),
              Stack(children: [
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    colors: [
                      _isLogin ? Color(0xff088240) : Color(0xff005090),
                      _isLogin ? Color(0xff7eae2b) : Color(0xff36a7c6)
                    ],
                    // colors: [Color(0xff005090), Color(0xff36a7c6)],
                    stops: [0.25, 0.75],
                    begin: Alignment(1.0, -2.0),
                    end: Alignment.bottomLeft,
                  )),
                  height: 200,
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(20, 70, 0, 0),
                    child: Text(
                      _isLogin ? 'Login' : 'Registrar',
                      style: GoogleFonts.poppins(
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
                top: 140,
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
                            AmvaliLogo(
                                color: _isLogin ? 0xff005090 : 0xff007a3c)
                          ],
                        ),
                        const SizedBox(height: 20),
                        Container(
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(6)),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 14),
                              child: TextFormField(
                                  controller: emailController,
                                  decoration: const InputDecoration(
                                      hintText: 'Usuário: ',
                                      border: InputBorder.none),
                                  onTapOutside: (event) =>
                                      FocusScope.of(context)
                                          .requestFocus(FocusNode())),
                            )),
                        SizedBox(height: 15),
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(6)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Password(),
                          ),
                        ),
                        SizedBox(height: 15),
                        _isLogin
                            ? Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                  ])
                            : SizedBox(height: 48),
                        const SizedBox(height: 15),
                        Container(
                          width: double.infinity,
                          height: 45,
                          decoration: BoxDecoration(
                              color: _isLogin
                                  ? Color(0xff007c3d)
                                  : Color(0xff005190),
                              borderRadius: BorderRadius.circular(4)),
                          child: TextButton(
                              onPressed: () async {
                                email:
                                emailController.text;
                                password:
                                passwordController.text;
                              },
                              child: Text(
                                _isLogin ? "Entrar" : "Criar",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                        ),
                        const SizedBox(height: 15),
                        Container(
                          width: double.infinity,
                          height: 45,
                          decoration: BoxDecoration(
                              color: _isLogin
                                  ? Color(0xff005190)
                                  : Color(0xff007c3d),
                              borderRadius: BorderRadius.circular(4)),
                          child: TextButton(
                              onPressed: () {
                                setState(() {
                                  _isLogin = !_isLogin;
                                });
                              },
                              child: Text(
                                _isLogin ? "Registrar conta" : "Fazer login",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                        ),
                        // Image.network(
                        //     'https://amvali.org.br/uploads/sites/563/2023/07/cropped-Logos_Prancheta-1.png')
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
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            value: _isChecked,
            onChanged: (bool? value) {
              setState(() {
                _isChecked = !_isChecked;
              });
            }),
        const Text('Lembrar de mim?')
      ],
    );
  }
}

class AmvaliLogo extends StatelessWidget {
  final color;

  const AmvaliLogo({required this.color});

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
                color: Color(color),
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
                    color: Color(color),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Ezra',
                    letterSpacing: -3)),
          ],
        ),
      ),
    ]);
  }
}

class Password extends StatefulWidget {
  const Password({super.key});

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: passwordController,
        obscureText: !_isChecked,
        decoration: InputDecoration(
            hintText: 'Senha: ',
            border: InputBorder.none,

            // this fixes alignment

            contentPadding: EdgeInsets.symmetric(vertical: 15),

            // This icon change the passoword axis fsr

            suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _isChecked = !_isChecked;
                  });
                },
                icon: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 100),
                  child: Icon(
                      _isChecked == true
                          ? Icons.visibility_rounded
                          : Icons.visibility_off_rounded,
                      key: ValueKey<bool>(_isChecked),
                      size: 20),
                ))),
        onTapOutside: (event) =>
            FocusScope.of(context).requestFocus(FocusNode()));
  }
}
