import '/models/item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item(
      name: 'Sugar',
      price: 5000,
      photo:
          'https://primomart.ph/cdn/shop/products/Hermano-Refined-White-Sugar-1-2Kg-500x500-product_popup_500x500.png?v=1592921637',
      stock: 200,
      rating: 4.9,
    ),
    Item(
      name: 'Salt',
      price: 2000,
      photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNSgucnV33jtcOTaJU4pmumqlFiEqvP5CF6A&s',
      stock: 5000,
      rating: 4.5,
    ),
    Item(
      name: 'Black Pepper',
      price: 7000,
      photo: 'https://images.tokopedia.net/img/cache/500-square/product-1/2021/3/18/1830348/1830348_bbd24be1-ce64-4ccf-9cef-ebbab74d322b.jpg',
      stock: 1000,
      rating: 4.1,
    ),
    Item(
      name: 'Rice',
      price: 12000,
      photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScrEJlRGNBdSEZ04ELdZvUqspQmiIE-0zTTA&s',
      stock: 500,
      rating: 4.4,
    ),
    Item(
      name: 'Brits Tea',
      price: 50000,
      photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiq-dHlC4FRLEJZ5IpCPhh5pzWLMffYM8tqw&s',
      stock: 500,
      rating: 3.9,
    ),
    Item(
      name: 'Coffee',
      price: 30000,
      photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiUpo9QHd8MpoNwK5x9va0bW6h5O_0kLWmDw&s',
      stock: 500,
      rating: 4.1,
    ),
    Item(
      name: 'Cooking oil',
      price: 10000,
      photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZdcjudayy6kpXbi2TCTcqZ6nn1bF9FeOWBA&s',
      stock: 100,
      rating: 3.5,
    ),
    Item(
      name: 'Tissue',
      price: 3500,
      photo: 'https://images.tokopedia.net/img/cache/500-square/VqbcmM/2022/4/1/080de510-751b-48a8-bb0e-97bedbc860a4.jpg',
      stock: 500,
      rating: 4.0,
    ),
  ];

  Widget footerSection = Container(
    padding: const EdgeInsets.all(8),
    child: const Text(
      'Brilyan Satria Wahyuda - TI3H - 2241720019',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shop App '),
        backgroundColor: const Color.fromARGB(255, 14, 138, 200),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(8),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 0.5,
                ),
                padding: const EdgeInsets.all(8),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return InkWell(
                    onTap: () {
                      context.go('/item', extra: item);
                    },
                    child: Card(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: double.infinity,
                              height: 400,
                              child: Hero(
                                tag: item.name,
                                child: Image.network(
                                  item.photo,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(item.name),
                            Text('Rp ${item.price}'),
                            Text('Stock: ${item.stock}'),
                            Text('Rating: ${item.rating}'),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          footerSection,
        ],
      ),
    );
  }
}