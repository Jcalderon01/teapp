import 'package:flutter/material.dart';

//Vista con los integrantes del equipo y su correo de contacto utilizando una lista de Cards
class AboutPage extends StatelessWidget {
  const AboutPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Kame Coders Team",
            style: TextStyle(
                color: Color(0xff000000),
                fontSize: 20,
                fontFamily: "Lilita One"),
            textAlign: TextAlign.center,
          ),
          automaticallyImplyLeading: false,
        ),
        backgroundColor: Color(0xff82B7D4),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                color: const Color(0xff5D57D1),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      leading: Image.asset(
                        '../assets/images/JorgeACalderon.jpg',
                        scale: 7,
                      ),
                      title: const Text(
                        "Jorge Alejandro Calderón",
                        style: TextStyle(fontSize: 18),
                      ),
                      subtitle: const Text(
                        "al19760591@ite.edu.mx",
                        style: TextStyle(fontSize: 14),
                      ),
                    )
                  ],
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                color: const Color(0xff5D57D1),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      leading: Image.asset(
                        '../assets/images/ManuelLopez.png',
                        scale: 7,
                      ),
                      title: const Text(
                        "Manuel Antonio Lopez",
                        style: TextStyle(fontSize: 18),
                      ),
                      subtitle: const Text(
                        "al19760584@ite.edu.mx",
                        style: TextStyle(fontSize: 14),
                      ),
                    )
                  ],
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                color: const Color(0xff5D57D1),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      leading: Image.asset(
                        '../assets/images/JanNeblina.png',
                        scale: 7,
                      ),
                      title: const Text(
                        "Jan Marlon Neblina",
                        style: TextStyle(fontSize: 18),
                      ),
                      subtitle: const Text(
                        "al19760610@ite.edu.mx",
                        style: TextStyle(fontSize: 14),
                      ),
                    )
                  ],
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                color: const Color(0xff5D57D1),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      leading: Image.asset(
                        '../assets/images/DiegoRulfo.png',
                        scale: 6,
                      ),
                      title: const Text(
                        "Diego Rulfo",
                        style: TextStyle(fontSize: 18),
                      ),
                      subtitle: const Text(
                        "al19760621@ite.edu.mx",
                        style: TextStyle(fontSize: 14),
                      ),
                    )
                  ],
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                color: const Color(0xff5D57D1),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      leading: Image.asset(
                        '../assets/images/EugenioVerdugo.jpg',
                        scale: 7,
                      ),
                      title: const Text(
                        "Eugenio Verdugo",
                        style: TextStyle(fontSize: 18),
                      ),
                      subtitle: const Text(
                        "eugenio.veos@gmail.com",
                        style: TextStyle(fontSize: 14),
                      ),
                    )
                  ],
                ),
              ),
              Image.asset(
                "../assets/images/Kame_Coders.png",
                scale: 4,
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          //bottomNavigationBar: BottomNavigation(),
          backgroundColor: Colors.green,
          child: const Icon(Icons.keyboard_return),
        ));
  }
}
