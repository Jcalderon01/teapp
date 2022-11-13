import 'package:flutter/material.dart';
import 'package:teapp/views/menu.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  //Vista inicial de la aplicacion

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Color.fromARGB(130, 58, 166, 225),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            Stack(children: [
              Image.asset(
                '../assets/images/TEAppLogo.png',
                scale: 2.4,
              )
            ]),
            const Padding(padding: EdgeInsets.fromLTRB(16.0, 20.0, 16.0, 0.0)),
            const Text(
              "TEAyudamos a\nEntender",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "Lilita One",
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            const Padding(padding: EdgeInsets.fromLTRB(16.0, 40.0, 16.0, 50.0)),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Stack(
                children: <Widget>[
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                        ),
                        gradient: const LinearGradient(
                          colors: <Color>[
                            Color(0xFF0D47A1),
                            Color(0xFF1976D2),
                            Color.fromARGB(255, 50, 147, 226),
                          ],
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.black,
                      textStyle: const TextStyle(
                          fontSize: 18, fontFamily: "Lilita One"),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Opciones()));
                    },
                    child: const Text('Comenzar'),
                  ),
                ],
              ),
            ),
            const Padding(padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 10.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "By Kame Coders",
                  style: TextStyle(
                      fontFamily: "Lilita One", fontWeight: FontWeight.bold),
                ),
                const Padding(padding: EdgeInsets.only(right: 5)),
                Image.asset(
                  '../assets/images/Kame_Coders.png',
                  scale: 10.0,
                )
              ],
            )
          ])),
    );
  }
}
