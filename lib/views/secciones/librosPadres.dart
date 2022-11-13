import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:teapp/components/product.dart';

//Vista donde se encuentras las Cards con libros sobre el TEA recomendados para padres
@override
Widget build(BuildContext context) {
  return const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SafeArea(child: LibrosPadres()),
  );
}

class LibrosPadres extends StatefulWidget {
  const LibrosPadres({Key? key}) : super(key: key);

  @override
  _LibrosPadres createState() => _LibrosPadres();
}

class _LibrosPadres extends State<LibrosPadres> {
  List<Product> productList = [
    Product('assets/images/Padres1.jpg',
        'El autismo explicado a los no autistas.', 12, 15),
    Product('assets/images/Padres2.jpg', 'Tener un hijo con autismo.', 8, 10),
    Product('assets/images/Padres3.jpg', 'No todo sobre el autismo.', 10, 25),
    Product('assets/images/Padres4.jpg', 'Mi hijo no habla.', 9, 50),
    Product('assets/images/Padres5.jpg', 'Una mente diferente.', 15, 5),
    Product('assets/images/Padres6.jpg', 'Disciplina sin lagrimas.', 20, 7),
    Product('assets/images/Padres7.jpg', 'El cerebro autista.', 14, 10),
    Product('assets/images/Padres8.jpg',
        'Autismo con discapacidad intelectual grave.', 9, 25),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Libros de apoyo: Padres"),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: SizedBox(
          height: 350,
          child: ScrollSnapList(
            itemBuilder: _buildListItem,
            itemCount: productList.length,
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
    Product product = productList[index];
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
