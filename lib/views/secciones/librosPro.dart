import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:teapp/components/product.dart';

//Vista donde se encuentras las Cards con libros sobre el TEA recomendados para profesionales
@override
Widget build(BuildContext context) {
  return const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SafeArea(child: LibrosPro()),
  );
}

class LibrosPro extends StatefulWidget {
  const LibrosPro({Key? key}) : super(key: key);

  @override
  _LibrosPro createState() => _LibrosPro();
}

class _LibrosPro extends State<LibrosPro> {
  List<Product> productList3 = [
    Product('assets/images/Pro1.jpg',
        'Atención temprana para su niña o niño con autismo.', 15, 22),
    Product(
        'assets/images/Pro2.jpg',
        'Modelo Denver de atención temprana para niños pequeños con autismo.',
        15,
        17),
    Product('assets/images/Pro3.jpg',
        'Manual de teoría de la mente para niños con autismo.', 9, 50),
    Product('assets/images/Pro4.jpg',
        'Autismo. Intervenir desde el desarrollo.', 15, 5),
    Product('assets/images/Pro5.jpg', 'Intervención en autismo.', 20, 7),
    Product('assets/images/Pro6.jpg', 'Autismo.', 14, 10),
    Product(
        'assets/images/Pro7.jpg',
        'Intervención psicoeducativa en autismo de alto funcionamiento.',
        9,
        25),
    Product(
        'assets/images/Padres8.jpg',
        'Guía de intervención logopédica en los transtornos del espectro del autismo.',
        16,
        15),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Libros de apoyo: Profesionales"),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: SizedBox(
          height: 350,
          child: ScrollSnapList(
            itemBuilder: _buildListItem,
            itemCount: productList3.length,
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
    Product product = productList3[index];
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
