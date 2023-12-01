import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Profil Saya',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.grey,
        body: _screens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: const [
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
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 10.0,), 

          Container(
            height: 150,
            width: 350,
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: const Color(0xffffffff),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(child: Image.asset('assets/images/Ellipse.png'),),
                    
                    const Text(
                      'John Doe',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),

                    const Text(
                      'Flutter Developer',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0,
                      ),
                    ),

                    const Text(
                      'johndoe@gmail.com | 0815124251828',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 10.0),
                    ),
                  ],
                ),

                Container(
                  child: const Icon(Icons.edit,color: Colors.blue,),
                ),
              ],
            ),
          ),

          const SizedBox(height: 10.0,), // SizedBox
          
          // Pengalaman
          Container(
            height: 300,
            width: 350,
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: const Color(0xffffffff),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/Bag.png"),
                    const SizedBox(width: 10.0,),
                    
                    const Text(
                      'Pengalaman Kerja',
                      style: TextStyle(
                          color: Color(0xff4D7EFA),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),

                    const SizedBox(width: 100.0,),
                    
                    const Text(
                      '+',
                      style: TextStyle(
                          color: Color(0xff4D7EFA),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),

                const SizedBox(
                  width: 315,
                  child: Divider(
                    height: 4,
                    thickness: 4,
                    color: Color(0xff868A96),
                  ),
                ),
                
                const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),

                    Text(
                      'Senior Flutter Developer',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),

                    SizedBox(height: 6,),
                    
                    Text(
                      'PT. Bangkit Bersama Kita',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),

                    SizedBox(height: 2,),
                    
                    Text(
                      'Januari 2020 - Desemba 2022',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),

                    SizedBox(height: 15,),
                    
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin in nisl dolor. Donec convallis quam a dignissim pulvinar. Nullam rhoncus elit a nisi elementum, sed luctus tortor porta. Etiam ac pellentesque lorem.',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                      ),
                    ),

                    SizedBox(
                      width: 315,
                      child: Divider(
                        height: 30,
                        thickness: 4,
                        color: Color(0xff868A96),
                      ),
                    ),
                    
                    Text(
                      'Junior Flutter Developer',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),

                    SizedBox(height: 6,),
                    
                    Text(
                      'PT. Kita Bangkit',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),

                    Text(
                      'Januari 2018 - Desemba 2019',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),

                    SizedBox(height: 15,),
                    
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin in nisl dolor. Donec convallis quam a dignissim pulvinar. Nullam rhoncus elit a nisi elementum, sed luctus tortor porta. Etiam ac pellentesque lorem.',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Pendidikan
          const SizedBox(height: 10.0,),
          
          Container(
            height: 130,
            width: 350,
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: const Color(0xffffffff),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/Education.png"),
                    const SizedBox(
                      width: 10.0,
                    ),
                    const Text(
                      'Pendidikan',
                      style: TextStyle(
                          color: Color(0xff4D7EFA),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),

                    const SizedBox(width: 165.0,),
                    
                    const Text(
                      '+',
                      style: TextStyle(
                          color: Color(0xff4D7EFA),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),

                const SizedBox(
                  width: 315,
                  child: Divider(
                    height: 4,
                    thickness: 4,
                    color: Color(0xff868A96),
                  ),
                ),

                const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10,),
                    
                    Text(
                      'SI Teknik Informatika',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),

                    SizedBox(height: 6,),
                    
                    Text(
                      'Universitas Kita Ajah',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),

                    SizedBox(height: 2,),
                    
                    Text(
                      'Agustus 2013 - Desemba 2017',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Kemampuan
          const SizedBox(
            height: 1.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Container(
              height: 130,
              width: 350,
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Color(0xffffffff),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset("assets/images/Brain.png"),
                      const SizedBox(width: 10.0,),
                      
                      const Text(
                        'Kemampuan',
                        style: TextStyle(
                            color: Color(0xff4D7EFA),
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),

                      const SizedBox(width: 155.0,),
                      
                      const Text(
                        '+',
                        style: TextStyle(
                            color: Color(0xff4D7EFA),
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ],
                  ),
                  
                  const SizedBox(
                    width: 315,
                    child: Divider(
                      height: 4,
                      thickness: 4,
                      color: Color(0xff868A96),
                    ),
                  ),

                  const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),

                      Text(
                        'SI Teknik Informatika',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),

                      SizedBox(height: 6,),
                      
                      Text(
                        'Universitas Kita Ajah',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),

                      SizedBox(height: 2,),
                      
                      Text(
                        'Agustus 2013 - Desemba 2017',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                      
                      SizedBox(height: 15,),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Profile Screen'),
    );
  }
}
