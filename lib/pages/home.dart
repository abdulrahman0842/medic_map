import 'package:flutter/material.dart';

class HospitalList extends StatefulWidget {
  const HospitalList({
    super.key,
  });

  @override
  State<HospitalList> createState() => _HospitalListState();
}

class _HospitalListState extends State<HospitalList> {
  final List<String> hospitalNames = [
    'Noor Hospital',
    'Nisa Hospital',
    'Al Ameen Hospital',
    'Shifa Hospital',
    'Juna Faran Hospital',
    'New Faran Hospital',
    'Al Aziz Hospital',
    'Maryam Hospital',
    'Swat Hospital',
    'Civil Hospital'
  ];

  final List<String> hosArea = [
    'Mushawerat Chowk',
    'Mirza Ghalib Road',
    'Mominpura',
    'Mirza Ghalib Road',
    'Agra Road',
    'Nayapura',
    'Khairabad',
    'Moti Taalab',
    'Saleem Nagar',
    'Saleem Nagar',
    'Agra Road',
    'Camp Road'
  ];

  final List<String> hospitalImages = [
    'assets/Noor_Hospital.jpg',
    'assets/Nisa_Hospital.jpg',
    'assets/Al-Ameen_Hospital.jpg',
    'assets/Shifa_Hospital.jpg',
    'assets/Juna-Faran_Hospital.jpg',
    'assets/New-Faran_Hospital.jpg',
    'assets/Al-Aziz_Hospital.jpg',
    'assets/Maryam_Hospital.jpg',
    'assets/Swat_Hospital.jpg',
    'assets/Civil_Hospital.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        color: Colors.grey[350],
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              elevation: 5,
              margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              child: InkWell(
                onTap: () {},
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const ClipRRect(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(12),
                        ),
                        child:
                            // Image.asset(
                            //   hospitalImages[index],
                            //   fit: BoxFit.cover,
                            //   height: 200,
                            // ),
                            Placeholder(
                          fallbackHeight: 200,
                        )),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            hospitalNames[index],
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            hosArea[index],
                            style: TextStyle(
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          itemCount: hospitalNames.length,
        ),
      ),
    );
  }
}
