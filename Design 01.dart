import 'package:flutter/material.dart';

class Design_01 extends StatelessWidget {
  const Design_01({super.key});

  Widget _buildCategoryChip(String label, Color color) {
    return Container(
      height: 34,
      width: 80,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          label,
          style: const TextStyle(fontWeight: FontWeight.w800),
        ),
      ),
    );
  }

  Widget _buildMenuItem(String imagePath, String title, String price) {
    return Padding(
      padding: const EdgeInsets.only(top: 70, left: 15),
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            height: 100,
            width: 180,
            child: Image.asset(
              imagePath,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Row(
            children: const [
              Icon(Icons.star, color: Colors.yellow),
              Icon(Icons.star, color: Colors.yellow),
              Icon(Icons.star, color: Colors.yellow),
              Icon(Icons.star, color: Colors.yellow),
              Icon(Icons.star, color: Colors.black),
              SizedBox(
                width: 10,
              ),
              Text("(11)"),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                price,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 60),
              const Icon(
                Icons.add_box,
                color: Colors.amber,
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const Text(
                      'Menu',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.search,
                      size: 30,
                      color: Colors.black,
                    ),
                    const SizedBox(width: 10),
                    const Icon(
                      Icons.filter_alt_outlined,
                      size: 30,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      _buildCategoryChip('Farsan', Colors.grey.shade200),
                      const SizedBox(width: 10),
                      _buildCategoryChip('Thali', Colors.amber),
                      const SizedBox(width: 10),
                      _buildCategoryChip('Ice-Cream', Colors.grey.shade200),
                      const SizedBox(width: 10),
                      _buildCategoryChip('FastFood', Colors.grey.shade200),
                      const SizedBox(width: 10),
                      _buildCategoryChip('Cold-Drinks', Colors.grey.shade200),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Text(
                        'All',
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Text(
                        'Gujarati',
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 20,
                          color: Colors.grey.shade500,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Text(
                        'Kathiyavadi',
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 20,
                          color: Colors.grey.shade500,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Text(
                        'Punjabi',
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 20,
                          color: Colors.grey.shade500,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Text(
                        'South-Indian',
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 20,
                          color: Colors.grey.shade500,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Text(
                        'Desert',
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 20,
                          color: Colors.grey.shade500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  _buildMenuItem(
                    'assets/images/KathiyavadiThali.jpg',
                    "Kathoyavadi \n Thali",
                    'S 15.50',
                  ),
                  _buildMenuItem(
                    'assets/images/PanjabiThali.jpg',
                    "Punjabi \n Thali",
                    'S 13.50',
                  ),
                ],
              ),
              Row(
                children: [
                  _buildMenuItem(
                    'assets/images/GujaratiThali.jpg',
                    "Gujarati \n Thali",
                    'S 11.50',
                  ),
                  _buildMenuItem(
                    'assets/images/Gulab Jamun.jpg',
                    "Gulaab Jamun\n (Desert)",
                    'S 5.50',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.grey.shade700,
          selectedItemColor: Colors.white,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.orange,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.green,
                ),
                label: 'Cart'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.menu,
                  color: Colors.blue,
                ),
                label: 'Menu'),
          ]
      ),
    );
  }
}