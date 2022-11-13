import 'package:flutter/material.dart';
import 'package:teapp/views/about.dart';
import 'package:teapp/views/compotamiento.dart';
import 'package:teapp/views/complicaciones.dart';
import 'package:teapp/views/interaccion.dart';
import 'package:teapp/views/libros.dart';
import 'package:teapp/views/queEs.dart';
import 'package:teapp/views/secciones/librosAu.dart';
import 'package:teapp/views/secciones/librosMaestros.dart';
import 'package:teapp/views/secciones/librosPadres.dart';
import 'package:teapp/views/secciones/librosPro.dart';

import '../components/colorButton.dart';

//Vista inicial donde estan las secciones de los libros
class Libros extends StatelessWidget {
  const Libros({super.key});

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
                'Secciones de libros',
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
                    text: 'Padres',
                    ref: const LibrosPadres(),
                    url: 'assets/images/red.png'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ColorButton(
                    text: 'Maestros',
                    ref: const LibrosMaestros(),
                    url: 'assets/images/pink.png'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ColorButton(
                    text: 'Profesionales',
                    ref: const LibrosPro(),
                    url: 'assets/images/green.png'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ColorButton(
                    text: 'Sobre autismo',
                    ref: const LibrosAu(),
                    url: 'assets/images/purple.png'),
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
