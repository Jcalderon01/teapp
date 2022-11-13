import 'package:flutter/material.dart';
import 'package:slimy_card/slimy_card.dart';

//Vista utilizando una Card con animación slimy donde presentamos las complicaciones que suelen pasar las personas con TEA
class Complicaciones extends StatefulWidget {
  const Complicaciones({super.key});

  @override
  _Complicaciones createState() => _Complicaciones();
}

class _Complicaciones extends State<Complicaciones> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        //bottomNavigationBar: BottomNavigation(),
        backgroundColor: Colors.green,
        child: const Icon(Icons.keyboard_return),
      ),
      backgroundColor: Color.fromARGB(130, 58, 166, 225),
      body: StreamBuilder(
        initialData: false,
        stream: slimyCard.stream,
        builder: ((BuildContext context, AsyncSnapshot snapshot) {
          return ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              titleSection(),
              SizedBox(height: 15),
              SlimyCard(
                color: Colors.blue[600],
                topCardWidget: topCardWidget((snapshot.data)
                    ? 'assets/images/Complicaciones1.jpg'
                    : 'assets/images/Complicaciones2.jpg'),
                bottomCardWidget: bottomCardWidget(),
              ),
            ],
          );
        }),
      ),
    );
  }

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
                      'Complicaciones del TEA',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );

  Widget topCardWidget(String imagePath) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 150,
          width: 180,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(image: AssetImage(imagePath)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 20,
                spreadRadius: 1,
              ),
            ],
          ),
        ),
        const SizedBox(height: 15),
        Center(
          child: Text(
            'Los problemas con las interacciones sociales, la comunicación y la conducta pueden dar lugar a lo siguiente:',
            style: TextStyle(
                color: Colors.white.withOpacity(0.8),
                fontSize: 14,
                fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }

  Widget bottomCardWidget() {
    return Column(
      children: const [
        /*Text(
          'https://flutterdevs.com/',
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
        */
        SizedBox(height: 15),
        Expanded(
          child: Text(
            'Problemas en la escuela y de aprendizaje.\n'
            'Problemas laborales.\n'
            'Incapacidad para vivir de forma independiente.\n'
            'Aislamiento social.\n'
            'Estrés en la familia.\n'
            'Victimización y ser objeto de intimidaciones.\n',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
