import 'package:flutter/material.dart';

//Clase en forma de componente en la que se apoyo para definir los botones del menú
class ColorButton extends StatelessWidget {
  ColorButton({required this.text, required this.ref, required this.url});

  final String text;
  final String url;
  final Widget ref;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        foregroundColor: Colors.black,
        padding: const EdgeInsets.all(16.0),
        textStyle: const TextStyle(fontSize: 20),
      ),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => ref));
      },
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            child: Image.asset(url),
          ),
          Text(text),
        ],
      ),
    );
  }
}


 /*ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
                    Color(0xFF1976D2),
                    Color(0xFF42A5F5),
                  ],
                ),
              ),
            ),
          ),
          
        ],
      ),
    );*/