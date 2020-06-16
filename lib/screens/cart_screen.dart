import 'package:flutter/material.dart';
import '../models/product_model.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  _buildCartProduct(index) {
    return ListTile(
      contentPadding: EdgeInsets.all(10.0),
      leading: Image(
        height: double.infinity,
        width: 100.0,
        image: AssetImage(cart[index].imageUrl),
        fit: BoxFit.contain,
      ),
      title: Text(
        cart[index].name,
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        'x1',
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: Text(
        '\$${cart[index].price.toStringAsFixed(2)}',
        style: TextStyle(
          color: Colors.orange,
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'Shopping Cart (${cart.length})',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: ListView.separated(
        itemCount: cart.length,
        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.grey[300],
          );
        },
        itemBuilder: (BuildContext context, int index) {
          return _buildCartProduct(index);
        },
      ),
      bottomSheet: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 80.0,
        color: Colors.orange,
        child: Text(
          'PLACE ORDER (\$336.39)',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
