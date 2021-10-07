import 'package:courierui/foodcard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CourierUi(),
    );
  }
}

class CourierUi extends StatefulWidget {
  const CourierUi({Key? key}) : super(key: key);

  @override
  _CourierUiState createState() => _CourierUiState();
}

class _CourierUiState extends State<CourierUi> {
  List<String> imageUrl = [
    'assets/foodone.jpg',
    'assets/foodtwo.jpg',
    'assets/foodthree.jpg',
    'assets/foodfour.jpg',
    'assets/foodfive.jpg',
    'assets/foodsix.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFfcfcfc),
        title: Text(
          'Courier Services',
          style: TextStyle(color: Color(0xFFfc6a26)),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart,

            color: Colors.black,),
            onPressed: () {},
          )
        ],
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: Colors.black,
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Let's Eat \nOrder your Food",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 28
              ),
            ),
            SizedBox(height: 20.0,),
            Container(
              width: double.infinity,
              height: 50.0,
              decoration: BoxDecoration(
                color: Color(0x55d2d2d2),
                  borderRadius: BorderRadius.circular(30.0),
              ),
              child: Row(
                children: [
                  Expanded(child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search...",
                      contentPadding: EdgeInsets.only(left: 20.0),
                      border:InputBorder.none,
                    ),
                  ),
                  ),
                  RaisedButton(
                    elevation: 3.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                      onPressed: (){},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical:15),
                        child:Icon(Icons.search,
                            color:Colors.white
                        ),
                      ),
                    color: Color(0xFFfc6a26),
                      ),


                ],
              ),

            ),
Expanded(
    child: GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 0.7,
      children: [
        foodCard(imageUrl[0],'Meat Pie', '45'),
        foodCard(imageUrl[1],'Fried Plate', '45'),
        foodCard(imageUrl[2],'Food Chicken', '45'),
        foodCard(imageUrl[3],'Meat Pie', '45'),
        foodCard(imageUrl[4],'Food Pie', '45'),
        foodCard(imageUrl[5],'Meat Pie', '45'),

      ],
    )),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: Color(0xFFfc6a26),
        items:[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            title: Text('Our Shop'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text('Favorite'),

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
          ),
        ]
      ),
    );
  }
}
