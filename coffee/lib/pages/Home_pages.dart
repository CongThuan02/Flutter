import 'package:coffee/util/coffee_title.dart';
import 'package:coffee/util/coffee_type.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List coffeeTypes = [
    ['Capuchino', true],
    ['latte', false],
    ['tea', false],
  ];
  void coffeeTypeSelected(int index) {
    setState(() {
      for (int i = 0; i < coffeeTypes.length; i++) {
        coffeeTypes[i][1] = false;
      }
      coffeeTypes[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 20,
            ),
            child: Icon(Icons.person),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
        ],
      ),
      body: Row(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Text(
                  'Find the best coffee for you',
                  style: GoogleFonts.bebasNeue(fontSize: 56),
                ),
              ),
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: "find your coffee...",
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade600),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade600),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25),
              Container(
                height: 50,

                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: coffeeTypes.length,
                    itemBuilder: (context, index) {
                      return CoffeeType(
                          coffeeType: coffeeTypes[index][0],
                          isSelected: coffeeTypes[index][1],
                          onTap: () {
                            coffeeTypeSelected(index);
                          });
                    }),

                // color: Colors.red,
              ),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CoffeeTitle(
                      coffeeImagePath: "lib/images/latte.png",
                      coffeeName: "hehe",
                      coffeePrice: '4.00',
                    ),
                    CoffeeTitle(
                      coffeeImagePath: "lib/images/caffee.png",
                      coffeeName: "hehe",
                      coffeePrice: '4.00',
                    ),
                    CoffeeTitle(
                      coffeeImagePath: "lib/images/milk.png",
                      coffeeName: "hehe",
                      coffeePrice: '4.00',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      
      
    );
  }
}
