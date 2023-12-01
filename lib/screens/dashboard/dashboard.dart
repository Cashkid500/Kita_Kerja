import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffD1D8EB),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                  height: 131,
                  padding: const EdgeInsets.all(22),
                  margin: const EdgeInsets.symmetric(horizontal: 0.5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                    color: const Color(0xffffffff),
                  ),
                  
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(10),
                          isCollapsed: true,
                          hintText: 'Flutter Developer.',
                          filled: true,
                          fillColor: const Color(0xffD1D8EB),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide: const BorderSide(color: Colors.white),
                          ),
                          prefixIcon: const Icon(
                            IconData(0xe567, fontFamily: 'MaterialIcons'),
                          ),
                        ),
                      ),
        
                      const SizedBox(height: 15), 
                      const Row(
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
        
              // Pertamina Junior Developer
              const SizedBox(height: 20), 
              
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
                        const Text(
                          'Junior Flutter Developer',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff4d7efa),
                          ),
                        ),
        
                        const SizedBox(height: 15),
                        
                        const Text(
                          'PT. Pertamina',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
        
                        const Text(
                          'Jakarta Raya, DKI Jakarta',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
        
                        const Text(
                          'Perkiraan Gaji Rp. 10.000.000',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff14C163),
                          ),
                        ),
        
                        const SizedBox(height: 25),
                        const Text(
                          '1 jam yang lalu',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
        
                    const SizedBox(width: 16),
                    const Center(
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
              const SizedBox(height: 20), 
              
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
                        const Text(
                          'Senior Flutter Developer',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff4d7efa),
                          ),
                        ),
        
                        const SizedBox(height: 15),
        
                        const Text(
                          'PT. Pertamina',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
        
                        const Text(
                          'Jakarta Raya, DKI Jakarta',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
        
                        const Text(
                          'Perkiraan Gaji Rp. 20.000.000',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff14C163),
                          ),
                        ),
        
                        const SizedBox(height: 25),
        
                        const Text(
                          '3 jam yang lalu',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
        
                    const SizedBox(width: 16),
        
                    const Center(
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
              const SizedBox(height: 20), 
              
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
                        const Text(
                          'Flutter Developer',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff4d7efa),
                          ),
                        ),
        
                        const SizedBox(height: 15),
        
                        const Text(
                          'PT. Telkom Indonesia',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
        
                        const Text(
                          'Jakarta Selatan, DKI Jakarta',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
        
                        const Text(
                          'Perkiraan Gaji Dibawah Perkiraan Anda',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffD07E03),
                          ),
                        ),
        
                        const SizedBox(height: 25),
        
                        const Text(
                          '5 jam yang lalu',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
        
                    const SizedBox(width: 16),
        
                    const Center(
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
              const SizedBox(height: 20), 
        
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
                        const Text(
                          'Flutter Developer',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff4d7efa),
                          ),
                        ),
        
                        const SizedBox(height: 16),
        
                        const Text(
                          'PT. Starbuck Indonesia',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
        
                        const Text(
                          'Jakarta Selatan, DKI Jakarta',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
        
                        const Text(
                          'Perkiraan Gaji Rp. 8.000.000',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff14C163),
                          ),
                        ),
                      ],
                    ),
        
                    const SizedBox(width: 16),
        
                    const Center(
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
      ),
    );
  }
}
