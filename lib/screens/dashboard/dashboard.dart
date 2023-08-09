import 'package:flutter/material.dart';

import '../about/about.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    // Add your home screen content here
    HomeScreen(),
    // Add your profile screen content here
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD1D8EB),
      body: SingleChildScrollView(
        // Wrap with SingleChildScrollView
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: InkWell(
                onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => AboutScreen()));
              },
                child: Container(
                  height: 131,
                  padding: const EdgeInsets.all(22),
                  margin: const EdgeInsets.symmetric(horizontal: 0.5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                    color: Color(0xffffffff),
                  ),
                  
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(10),
                          isCollapsed: true,
                          labelText: 'Flutter Developer.',
                          filled: true,
                          fillColor: Color(0xffD1D8EB),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          prefixIcon: Icon(
                            IconData(0xe567, fontFamily: 'MaterialIcons'),
                          ),
                        ),
                      ),

                      SizedBox(height: 15), // Adding some spacing
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '10 jobs found',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          Icon(Icons.filter_list_rounded)
                        ],
                      ),
                    
                    ],
                  ),
                ),
              ),
            ),

            // Pertamina Junior Developer
            SizedBox(height: 20), // Adding space of 20 pixels between the containers
            
            Container(
              height: 198,
              color: Colors.white,
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/images/Pertamina.png'),
                      Text(
                        'Junior Flutter Developer',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff4d7efa),
                        ),
                      ),

                      SizedBox(height: 15),
                      
                      Text(
                        'PT. Pertamina',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),

                      Text(
                        'Jakarta Raya, DKI Jakarta',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),

                      Text(
                        'Perkiraan Gaji Rp. 10.000.000',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff14C163),
                        ),
                      ),

                      SizedBox(height: 25),
                      Text(
                        '1 jam yang lalu',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff000000),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(width: 16),
                  Center(
                    child: Icon(
                      Icons.turned_in_not,
                      color: Color(0xff4d7efa),
                      size: 40,
                    ),
                  ),
                ],
              ),
            ),

            // Pertamina Senior Flutter Developer
            SizedBox(height: 20), // Adding space of 20 pixels between the containers
            
            Container(
              height: 198,
              color: Colors.white,
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/images/Pertamina.png'),
                      Text(
                        'Senior Flutter Developer',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff4d7efa),
                        ),
                      ),

                      SizedBox(height: 15),

                      Text(
                        'PT. Pertamina',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),

                      Text(
                        'Jakarta Raya, DKI Jakarta',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),

                      Text(
                        'Perkiraan Gaji Rp. 20.000.000',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff14C163),
                        ),
                      ),

                      SizedBox(height: 25),

                      Text(
                        '3 jam yang lalu',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff000000),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(width: 16),

                  Center(
                    child: Icon(
                      Icons.turned_in_not,
                      color: Color(0xff4d7efa),
                      size: 40,
                    ),
                  ),
                ],
              ),
            ),

            // Telkom Indonesia
            SizedBox(height: 20), // Adding space of 20 pixels between the containers
            
            Container(
              height: 198,
              color: Colors.white,
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/images/Telkom.png'),
                      Text(
                        'Flutter Developer',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff4d7efa),
                        ),
                      ),

                      SizedBox(height: 15),

                      Text(
                        'PT. Telkom Indonesia',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),

                      Text(
                        'Jakarta Selatan, DKI Jakarta',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),

                      Text(
                        'Perkiraan Gaji Dibawah Perkiraan Anda',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffD07E03),
                        ),
                      ),

                      SizedBox(height: 25),

                      Text(
                        '5 jam yang lalu',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff000000),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(width: 16),

                  Center(
                    child: Icon(
                      Icons.turned_in_not,
                      color: Color(0xff4d7efa),
                      size: 40,
                    ),
                  ),
                ],
              ),
            ),

            // Starbucks
            SizedBox(height: 20), // Adding space of 20 pixels between the containers

            Container(
              height: 198,
              color: Colors.white,
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/images/Starbucks.png'),
                      Text(
                        'Flutter Developer',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff4d7efa),
                        ),
                      ),

                      SizedBox(height: 16),

                      Text(
                        'PT. Starbuck Indonesia',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),

                      Text(
                        'Jakarta Selatan, DKI Jakarta',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),

                      Text(
                        'Perkiraan Gaji Rp. 8.000.000',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff14C163),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(width: 16),

                  Center(
                    child: Icon(
                      Icons.turned_in_not,
                      color: Color(0xff4d7efa),
                      size: 40,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 40,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_outlined,
              size: 40,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}

// Create separate HomeScreen and ProfileScreen classes for the content of the respective tabs.
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Home Screen'),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Profile Screen'),
    );
  }
}
