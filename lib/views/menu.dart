import 'package:flutter/material.dart';
import 'package:teapp/views/about.dart';
import 'package:teapp/views/compotamiento.dart';
import 'package:teapp/views/complicaciones.dart';
import 'package:teapp/views/interaccion.dart';
import 'package:teapp/views/libros.dart';
import 'package:teapp/views/queEs.dart';

import '../components/colorButton.dart';

class Opciones extends StatelessWidget {
  const Opciones({super.key});
//Menu con todas las secciones de la app
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(130, 58, 166, 225),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const SizedBox(
              width: 300,
              height: 100,
              child: Text(
                'Transtorno del Espectro Autista',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
                maxLines: 2,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ColorButton(
                    text: '¿Qué es?',
                    ref: queEs(),
                    url: 'assets/images/red.png'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ColorButton(
                    text: 'Comportamiento',
                    ref: Comportamiento(),
                    url: 'assets/images/pink.png'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ColorButton(
                    text: 'Complicaciones',
                    ref: Complicaciones(),
                    url: 'assets/images/green.png'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ColorButton(
                    text: 'Interacción',
                    ref: Interaccion(),
                    url: 'assets/images/purple.png'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ColorButton(
                    text: 'Libros',
                    ref: Libros(),
                    url: 'assets/images/yellow.png'),
              ],
            ),
          ],
        )),
        floatingActionButton:
            Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          FloatingActionButton(
            child: Icon(Icons.keyboard_return),
            onPressed: () {
              Navigator.pop(context);
            },
            backgroundColor: Colors.green,
            heroTag: null,
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            child: Icon(Icons.info),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AboutPage()));
            },
            heroTag: null,
          )
        ]));
  }
}
