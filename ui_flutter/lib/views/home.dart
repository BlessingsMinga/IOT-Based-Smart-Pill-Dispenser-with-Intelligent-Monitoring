import 'package:flutter/material.dart';

class CarePillHomePage extends StatelessWidget {
  const CarePillHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Scheduled',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Row: Logo & Profile
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/logo.jpg',
                        width: 110,
                        height: 60,
                      ),
                      const SizedBox(width: 8),
                      // const Text(
                      //   'CarePill',
                      //   style: TextStyle(
                      //     fontSize: 20,
                      //     fontWeight: FontWeight.bold,
                      //     color: Colors.teal,
                      //   ),
                      // ),
                    ],
                  ),
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                    radius: 20,
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // Date
              Center(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    'Today, 20th',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Title
              const Center(
                child: Text(
                  'Your Health is Your\nWealth',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Days row
              SizedBox(
                height: 60,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    final isActive = index < 3;
                    final days = ['M', 'T', 'W', 'T', 'F', 'S', 'S'];
                    return Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor:
                        isActive ? Colors.orange : Colors.grey.shade300,
                        child: Text(
                          days[index],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),

              // Medicine Card
              Container(
                height: 110,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.lightBlue.shade300,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40), // You can adjust the radius
                      child: Image.asset(
                        'assets/images/profile.png',
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover, // Ensures the image fills the area nicely
                      ),
                    ),

                    const SizedBox(width: 21),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Paracetamol',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            'Today, 10:00 PM',
                            style: TextStyle(color: Colors.white70),
                          ),
                        ],
                      ),
                    ),
                    const Icon(Icons.alarm, color: Colors.white),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Prescribed Medicines
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Prescribed Medicine',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text("see more"),
                  )
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    medicineCard("Paracetamol", "assets/images/panado.png"),
                    medicineCard("Bapakprofen", "assets/images/tablets.png"),
                    medicineCard("Liquid Aspirin", "assets/images/medz.png"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget medicineCard(String name, String imgPath) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Container(
        width: 120,
        height: 100,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Image.asset(imgPath, width: 20, height: 20),
            const SizedBox(height: 8),
            Text(name,
                style:
                const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
            const SizedBox(height: 4),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: const Size(40, 20),
              ),
              child: const Text('View'),
            )
          ],
        ),
      ),
    );
  }
}
