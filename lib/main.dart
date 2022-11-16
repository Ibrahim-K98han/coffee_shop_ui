import 'package:flutter/material.dart';

import 'details_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(left: 15),
        children: [
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Welcome, Ibrahim',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF473D3A)
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                          image: AssetImage('images/coffee.jpg'),
                          fit: BoxFit.cover
                      )
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 10,),
          const Padding(
            padding: EdgeInsets.only(right: 45),
            child: Text('Let\'s Select the best taste for hour next coffee break!',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
                color: Color(0xFFB0AAA7),
              ),),
          ),
          const SizedBox(height: 25,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Taste of the week',
              style: TextStyle(
                fontSize: 17,
                color: Color(0xFF473D3A)
              ),),
              Padding(
                padding: EdgeInsets.only(right: 15),
                child: Text('Taste of the week',
                  style: TextStyle(
                      fontSize: 17,
                      color: Color(0xFFCEC7C4)
                  ),),
              )
            ],
          ),
          const SizedBox(height: 15,),
          SizedBox(
            height: 410,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _coffeeListCard('images/coffee_cup.png',
                  'Caffe Misto',
                  'Coffeeshop',
                  'Our dark, rich espresso balanced with stemed milk and a light layer of foam',
                  '\$4.99',
                  false
                ),
                _coffeeListCard('images/coffee_cup.png',
                    'Caffe Latte',
                    'BrownHouse',
                    'Rich, full-bodied espresso with bittersweet milk sauce and steamed milk',
                    '\$3.99',
                    false
                ),
              ],
            ),
          ),
          const SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Explore nearby',
              style: TextStyle(
                fontSize: 17,
                color: Color(0xFF473D3A)
              ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 15),
                child: Text(
                  'See All',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xFFCEC7C4)
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 15,),
          SizedBox(
            height: 125,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildImage('images/coffee.jpg'),
                _buildImage('images/coffee.jpg'),
                _buildImage('images/coffee.jpg'),
              ],
            ),
          ),
          const SizedBox(height: 20,),
        ],
      ),
    );
  }

  _buildImage(String imgPath){
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Container(
        height: 120,
        width: 190,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(imgPath),
            fit: BoxFit.cover
          )
        ),
      ),
    );
  }
  _coffeeListCard(String imgPath, String coffeeName, String shopName, String description, String price, bool isFavorite){
    return Padding(
      padding: EdgeInsets.only(left: 15, right: 15),
      child: Container(
        height: 300,
        width: 225,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 335,
                ),
                Positioned(
                  top: 75,
                  child: Container(
                    padding: const EdgeInsets.only(left: 10, right: 20),
                    height: 260,
                    width: 225,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color(0xFFDAB68C)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 60,),
                        Text(
                          '$shopName\'s',
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                        ),
                        const SizedBox(height: 10,),
                        Text(
                          coffeeName,
                          style: const TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                        ),
                        const SizedBox(height: 10,),
                        Text(
                          description,
                          style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              price,
                              style: const TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF3A4742)
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Icon(Icons.favorite,
                                  color: isFavorite ? Colors.red: Colors.grey,
                                  size: 20,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 60,
                  top: 25,
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(imgPath),
                        fit: BoxFit.contain
                      )
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20,),
            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context)=>const DetailsPage()
                ));
              },
              child: Container(
                height: 50,
                width: 225,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: const Color(0xFF473D3A)
                ),
                child: const Center(
                  child: Text(
                    'Order Now',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


