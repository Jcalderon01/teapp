import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:teapp/components/product.dart';

//Vista donde se encuentras las Cards con libros sobre el TEA recomendados para maestros
@override
Widget build(BuildContext context) {
  return const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SafeArea(child: LibrosMaestros()),
  );
}

class LibrosMaestros extends StatefulWidget {
  const LibrosMaestros({Key? key}) : super(key: key);

  @override
  _LibrosMaestros createState() => _LibrosMaestros();
}

class _LibrosMaestros extends State<LibrosMaestros> {
  List<Product> productList2 = [
    Product('assets/images/Maestro1.jpg',
        'Manual del juego para niños con autismo.', 10, 15),
    Product(
        'assets/images/Maestro2.jpg',
        'Autismo: De la comprensión teórica a la intervención educativa.',
        9,
        10),
    Product('assets/images/Maestro3.jpg', 'Los niños pequeños con autismo.', 10,
        25),
    Product(
        'assets/images/Maestro4.jpg',
        'Comunicación social para niños con autismo y otras dificultades para el desarrollo.',
        9,
        50),
    Product('assets/images/Maestro5.jpg',
        '¡Escúchame! Relaciones sociales y comunicación.', 12, 5),
    Product('assets/images/Maestro6.jpg', 'La ansiedad en el autismo.', 11, 7),
    Product('assets/images/Maestro7.jpg',
        'Manual práctico para alumnado con TEA.', 14, 10),
    Product('assets/images/Maestro8.jpg', 'Autismo, comprender las emociones.',
        9, 25),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Libros de apoyo: Maestros"),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: SizedBox(
          height: 350,
          child: ScrollSnapList(
            itemBuilder: _buildListItem,
            itemCount: productList2.length,
            itemSize: 180,
            onItemFocus: (index) {},
            dynamicItemSize: true,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        //bottomNavigationBar: BottomNavigation(),
        backgroundColor: Colors.green,
        child: const Icon(Icons.keyboard_return),
      ),
    );
  }

  Widget _buildListItem(BuildContext context, int index) {
    Product product = productList2[index];
    return SizedBox(
      width: 180,
      height: 250,
      child: Card(
        elevation: 12,
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          child: Column(
            children: [
              Image.asset(
                product.imagePath,
                fit: BoxFit.cover,
                width: 150,
                height: 180,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                product.title,
                style: const TextStyle(fontSize: 15),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$${product.cost}',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '${product.reviewCount} Reviews',
                      style: const TextStyle(color: Colors.blue),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
