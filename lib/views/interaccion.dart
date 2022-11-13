import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

//Lista de Card donde se habla de la forma en la que las personas con TEA interactuan con las demás personas
class Interaccion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(130, 58, 166, 225),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            titleSection(),
            buildColoredCard(),
          ],
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

  Widget titleSection() => Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Expanded(
              /*1*/
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  /*2*/
                  Container(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: const Text(
                      'Comunicación e interacción social',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  const Text(
                    'Un niño o un adulto con trastorno del espectro autista puede tener problemas'
                    'con la interacción social y las habilidades de comunicación, incluso presentar'
                    'cualquiera de los siguientes signos:',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );

  Widget buildColoredCard() => Column(
        children: [
          Card(
            color: Colors.blue,
            elevation: 8,
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  SizedBox(height: 4),
                  Text(
                    'No responde a su nombre o, en ocasiones, parece no escucharte.',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.blue[600],
            elevation: 8,
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  SizedBox(height: 4),
                  Text(
                    'Se resiste a los abrazos y las caricias; además, parece que prefiere jugar solo y se abstrae en su propio mundo.',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.blue[700],
            elevation: 8,
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  SizedBox(height: 4),
                  Text(
                    'No suele hacer contacto visual y carece de expresión facial.',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.blue[800],
            elevation: 8,
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  SizedBox(height: 4),
                  Text(
                    'No habla o tiene un desarrollo tardío del habla, o bien pierde la capacidad que tenía para decir palabras u oraciones.',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.blue[900],
            elevation: 8,
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  SizedBox(height: 4),
                  Text(
                    'No puede mantener ni iniciar una conversación o, tal vez, inicia una solamente para pedir algo o nombrar elementos.',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.green,
            elevation: 8,
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  SizedBox(height: 4),
                  Text(
                    'Habla con tono o ritmo anormal y es posible que utilice una voz cantarina o que hable como un robot.',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.green[600],
            elevation: 8,
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  SizedBox(height: 4),
                  Text(
                    'Repite palabras o frases textuales, pero no comprende cómo usarlas.',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.green[700],
            elevation: 8,
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  SizedBox(height: 4),
                  Text(
                    'No parece entender preguntas o indicaciones simples.',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.green[800],
            elevation: 8,
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  SizedBox(height: 4),
                  Text(
                    'No expresa emociones ni sentimientos y parece no ser consciente de los sentimientos de los demás.',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.green[900],
            elevation: 8,
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  SizedBox(height: 4),
                  Text(
                    'Tiene dificultad para reconocer señales no verbales, como la interpretación de las expresiones faciales de otras personas, las posturas corporales o el tono de voz.',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.purple,
            elevation: 8,
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  SizedBox(height: 4),
                  Text(
                    'Tiene dificultad para reconocer señales no verbales, como la interpretación de las expresiones faciales de otras personas, las posturas corporales o el tono de voz.',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.purple[700],
            elevation: 8,
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  SizedBox(height: 4),
                  Text(
                    'Aborda interacciones sociales de forma inadecuada comportándose de manera pasiva, agresiva o perturbadora.',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
}
