import 'package:flutter/material.dart';
import '../models/product_model.dart';
import '../screens/cart_screen.dart';
import '../widgets/product_carousel.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: InkResponse(
            onTap: () => print('Menu'),
            child: Icon(
              Icons.menu,
              color: Colors.black,
              size: 30.0,
            ),
          ),
        ),
        title: Image(
          image: AssetImage('assets/images/amazon_logo.jpg'),
          height: 30.0,
        ),
        actions: [
          Stack(
            alignment: Alignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: InkResponse(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => CartScreen(),
                    ),
                  ),
                  child: Icon(
                    Icons.shopping_basket,
                    color: Colors.black,
                    size: 30.0,
                  ),
                ),
              ),
              Positioned(
                bottom: 8.0,
                right: 16.0,
                child: Container(
                  height: 20.0,
                  width: 20.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.orange,
                  ),
                  child: Center(
                    child: Text(
                      '5',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: InkResponse(
              onTap: () => print('Search'),
              child: Icon(
                Icons.search,
                color: Colors.black,
                size: 30.0,
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Image(
                image: AssetImage('assets/images/samsung_gear_vr.jpg'),
              ),
              Positioned(
                left: 20.0,
                bottom: 30.0,
                right: 20.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'POPULAR',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'The future of',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'virtual reality',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      height: 70.0,
                      width: double.infinity,
                      color: Colors.white,
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage('assets/images/gear_vr.jpg'),
                            height: 50.0,
                          ),
                          SizedBox(width: 10.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Samsung Gear VR',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'FOR GAMERS',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width: 60.0,
                                  child: FlatButton(
                                    onPressed: () => print('Got to product'),
                                    padding: EdgeInsets.all(10.0),
                                    color: Colors.orange,
                                    child: Icon(
                                      Icons.arrow_forward,
                                      size: 30.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 15.0),
          ProductCarousel(
            title: 'Amazon Prime Deals',
            products: products,
          ),
          SizedBox(height: 15.0),
          ProductCarousel(
            title: 'Popular Books',
            products: books,
          ),
        ],
      ),
    );
  }
}
