import 'package:amvali3dviewer/home_screen.dart';
import 'package:amvali3dviewer/web_view.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey[700],
      appBar: AppBar(
        title: const Text('Amvali 3D Viewer',
        style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        // child: OverflowBox(
        //   maxHeight: double.infinity,
          child: Column(
            children: [
              // const SizedBox(height: 100),
              const Text('Quem está usando?',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w500,
              ),),
              const SizedBox(height: 100),
              Container(
                width: 300,
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10,0,0,7),
                    child: TextField(
                      decoration: const InputDecoration(
                        hintText: 'Usuário',
                        border: InputBorder.none
                      ),
                        obscureText: false,
                        onTapOutside: (event) => FocusScope.of(context).requestFocus(FocusNode())
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Container(
                width: 300,
                height: 45,
                decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10,0,0,7),
                    child: TextField(
                      decoration: const InputDecoration(
                          hintText: 'Senha',
                          border: InputBorder.none
                      ),
                      obscureText: true,
                      onTapOutside: (event) => FocusScope.of(context).requestFocus(FocusNode())
                    ),
                  ),
                ),
              ),
              const SizedBox(height:70),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                      child: ElevatedButton(
                          onPressed: (){
                            Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const WebView()));
                          },
                          style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          child: const Text('Entrar como convidado'),
                      ),
                    ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                        child: FilledButton(
                          onPressed: (){
                            Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const HomeScreen()));
                          },
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            child: const Text('Entrar')),
                      ),
                    ],
                ),
              ),
              // SizedBox(height:MediaQuery.of(context).viewInsets.bottom+477) // tentativa de evitar overflow
            ]),
        ),


    );
  }
}
