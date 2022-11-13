import 'package:flutter/material.dart';

// Esta clase consiste en la definición de lo que es el TEA, donde utilizamos un Card para representar la información
class queEs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(130, 58, 166, 225),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            titleSection(),
            buildImageInteractionCard(),
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

  Widget buildImageInteractionCard() => Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            const SizedBox(
              width: 200,
              height: 10,
            ),
            Stack(
              children: [
                Ink.image(
                  image: const NetworkImage(
                    'https://lanoticia.com/wp-content/uploads/2022/04/autismo-por-que-no-es-una-enfermedad-diagnostico-tratamiento-scaled-e1648863832974.jpg',
                  ),
                  height: 240,
                  fit: BoxFit.fill,
                ),
                const Positioned(
                  bottom: 16,
                  right: 16,
                  left: 16,
                  child: Text(
                    'Autismo',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 24,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16).copyWith(bottom: 0),
              child: const Text(
                'El trastorno del espectro autista es una condición relacionada con el desarrollo del cerebro que afecta la manera en la que una persona percibe y socializa con otras personas, lo que causa problemas en la interacción social y la comunicación. \n\nComprende condiciones que anteriormente se consideraban independientes, como el autismo, el síndrome de Asperger, el trastorno desintegrativo infantil y una forma no especificada de trastorno generalizado del desarrollo. \n\nEl TEA es una condición neurológica, no es una enfermedad que se padece, simplemente se tiene. Es muy importante la forma en que se refiere a una persona con autismo, ya que siguen siendo personas con capacidades, sueños, limitaciones, miedos, expectativas y merecen el mismo respeto que cualquier persona neurotípica.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(
              width: 200,
              height: 10,
            )
          ],
        ),
      );

  Widget titleSection() => Container(
        padding: const EdgeInsets.all(32),
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
                      '¿Qué es el Transtorno del Espectro Autista (TEA)?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  const Text(
                    '"Las personas con autismo son más que un diagnostico"',
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
}
