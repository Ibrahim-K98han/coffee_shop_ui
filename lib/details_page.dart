import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Coffee'),
        backgroundColor: Color(0xFFF3B2B7),
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height - 20,
                width: MediaQuery.of(context).size.width,
                color: const Color(0xFFF3B2B7),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height/2,
                child: Container(
                  height: MediaQuery.of(context).size.height / 2 - 20,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(40),
                    topLeft: Radius.circular(40)),
                    color: Colors.white
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 2 + 25,
                left: 15,
                child: SizedBox(
                  height: (MediaQuery.of(context).size.height / 2) - 50,
                  width: MediaQuery.of(context).size.width,
                  child: ListView(
                    children: [
                      const Text(
                        'Preparation Time',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF726b68)
                        ),
                      ),
                      const SizedBox(height: 7,),
                      const Text(
                        '5min',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFFc6c4c4)
                        ),
                      ),
                     const SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                          height: 0.5,
                          color: const Color(0xFFc6c4c4),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      const Text(
                        'Ingredients',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF726b68)
                        ),
                      ),
                      const SizedBox(height: 20,),
                      SizedBox(
                        height: 110,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            buildIngredientItem(
                          'Water',
                          const Icon(Icons.water),
                          const Color(0xff6fc5da),),
                            buildIngredientItem(
                              'Water',
                              const Icon(Icons.water),
                              const Color(0xff6fc5da),),
                            buildIngredientItem(
                              'Water',
                              const Icon(Icons.water),
                              const Color(0xff6fc5da),),
                            buildIngredientItem(
                              'Water',
                              const Icon(Icons.water),
                              const Color(0xff6fc5da),),
                            buildIngredientItem(
                              'Water',
                              const Icon(Icons.water),
                              const Color(0xff6fc5da),),
                            buildIngredientItem(
                              'Water',
                              const Icon(Icons.water),
                              const Color(0xff6fc5da),),
                            buildIngredientItem(
                              'Water',
                              const Icon(Icons.water),
                              const Color(0xff6fc5da),),
                            buildIngredientItem(
                              'Water',
                              const Icon(Icons.water),
                              const Color(0xff6fc5da),)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                          height: 0.5,
                          color: const Color(0xFFc6c4c4),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      const Text(
                        'Nutrition Information',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff726b68),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        children: const [
                          Text(
                            'Calories',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xffd4d3d2)
                            ),
                          ),
                          SizedBox(width: 15,),
                          Text(
                            '250',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff716966)
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        children: const [
                          Text(
                            'Proteins',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xffd4d3d2)
                            ),
                          ),
                          SizedBox(width: 15,),
                          Text(
                            '10g',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff716966)
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        children: const [
                          Text(
                            'Caffeine',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xffd4d3d2)
                            ),
                          ),
                          SizedBox(width: 15,),
                          Text(
                            '150mg',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff716966)
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                          height: 0.5,
                          color: const Color(0xFFc6c4c4),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(right: 25),
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            color: const Color(0xff473d3a)
                          ),
                          child: const Center(
                            child: Text('Make Order',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                            ),),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20,)
                    ],
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 10,
                left: 75,
                child: Container(
                  height: 400,
                  width: 400,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/coffee_cup.png'),
                      fit: BoxFit.cover
                    )
                  ),
                ),
              ),
              Positioned(
                top: 25,
                left: 15,
                child: Container(
                  height: 300,
                  width: 250,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const SizedBox(
                            width: 150,
                            child: Text('Carmael Macchiato',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                            ),),
                          ),
                          const SizedBox(width: 15,),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white
                            ),
                            child: const Center(
                              child: Icon(Icons.favorite,size: 18,color: Colors.red,),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 10,),
                      const SizedBox(
                        width: 170,
                        child: Text(
                          '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s''',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.white
                          ),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color(0xff473d3a)
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    '4.2',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.white
                                    ),
                                  ),
                                  Text(
                                    '/5',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Color(0xff7c7573)
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 15,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Stack(
                                children: [
                                  const SizedBox(
                                    height: 35,
                                    width: 80,
                                  ),
                                  Positioned(
                                    left: 40,
                                    child: Container(
                                      height: 35,
                                      width: 35,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(17),
                                        border: Border.all(
                                          color: const Color(0xfff2b2b7),
                                          style: BorderStyle.solid,
                                          width: 1.0
                                        ),
                                        image: const DecorationImage(
                                          image: AssetImage('images/perosn.png'),
                                          fit: BoxFit.cover
                                        )
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
  buildIngredientItem(String name, Icon iconName, Color bgColor){
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: bgColor
            ),
            child: Center(
              child: iconName,
            ),
          ),
          const SizedBox(height: 4,),
          SizedBox(
            width: 60,
            child: Center(
              child: Text(
                name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 12,
                  color: Color(0xffc2c0c0)
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
