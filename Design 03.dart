import 'package:flutter/material.dart';

class Design_03 extends StatelessWidget {
  const Design_03({super.key});

  @override
  Widget build(BuildContext context) {
    Widget _buildItemRow({
      required String imagePath,
      required String title,
      required double price,
      required int quantity,
    }) {
      return Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              imagePath,
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 30),
          Column(
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Icon(Icons.remove),
                  const SizedBox(width: 5),
                  Text(
                    '$quantity',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 5),
                  const Icon(Icons.add),
                ],
              ),
            ],
          ),
          const SizedBox(width: 40),
          Column(
            children: [
              Text(
                '\$ $price',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade400,
                ),
              ),
              const SizedBox(height: 20),
              const Icon(Icons.close_outlined),
            ],
          ),
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 2, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Cart',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Thu, 6th June',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '+ Add to Order',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade400,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            _buildItemRow(
              imagePath: 'assets/images/PanjabiThali.jpg',
              title: '  Punjabi Thali ',
              price: 13.50,
              quantity: 3,
            ),
            SizedBox(
              height: 10,
            ),
            _buildItemRow(
              imagePath: 'assets/images/Gulab Jamun.jpg',
              title: ' Gulaab Jamun ',
              price: 5.50,
              quantity: 6,
            ),
            SizedBox(
              height: 10,
            ),
            _buildItemRow(
              imagePath: 'assets/images/Chhash.jpg',
              title: '   Butter Milk    ',
              price: 2.00,
              quantity: 6,
            ),
            SizedBox(
              height: 10,
            ),
            _buildItemRow(
              imagePath: 'assets/images/Papad.jpg',
              title: '        Papad        ',
              price: 2.00,
              quantity: 3,
            ),
            TextField(),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    'Total : ',
                    style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade400,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 200),
                  child: Text(
                    '\$91.5',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(500),
                ),
                child: Center(child: Text('Checkout',style: TextStyle(fontSize: 30,),)),

              ),
            ),
          ],
        ),
      ),
    );
  }
}