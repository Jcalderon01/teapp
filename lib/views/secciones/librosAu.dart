import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:teapp/components/product.dart';

//Vista donde se encuentras las Cards con libros sobre el TEA recomendados para adultos
@override
Widget build(BuildContext context) {
  return const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SafeArea(child: LibrosAu()),
  );
}

class LibrosAu extends StatefulWidget {
  const LibrosAu({Key? key}) : super(key: key);

  @override
  _LibrosAu createState() => _LibrosAu();
}

class _LibrosAu extends State<LibrosAu> {
  List<Product> productList4 = [
    Product('assets/images/Au1.jpg', 'Seres humanos únicos.', 11, 33),
    Product(
        'assets/images/Au2.jpg',
        'La extraordinaria aventura de educar a un hijo con TEA. Contada por una orienta madre',
        10,
        25),
    Product('assets/images/Au3.jpg', 'Al niño al que se le olvidó como mirar.',
        7, 42),
    Product('assets/images/Au4.jpg',
        'El hombre que recogía monedas con la boca.', 8, 34),
    Product('assets/images/Au5.jpg',
        'Pensar con imagenes. Mi vida con el autismo.', 8, 15),
    Product('assets/images/Au6.jpg',
        'El curioso incidente del perro a medianoche.', 6, 51),
    Product('assets/images/Au7.png', 'Lucas tiene superpoderes.', 9, 25),
    Product('assets/images/Au8.jpg', 'La chispa.', 12, 15),
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
            itemCount: productList4.length,
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
    Product product = productList4[index];
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
