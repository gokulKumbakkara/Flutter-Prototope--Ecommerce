import 'package:flipkart_flutter_ui/src/ui/LoginScreen.dart';
import 'package:flipkart_flutter_ui/src/ui/widgets/Drawerfile.dart';
import 'package:flipkart_flutter_ui/src/ui/body.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Image.asset(
          '',//againlogo
          height: MediaQuery.of(context).size.height / 2,
          width: MediaQuery.of(context).size.width / 4,
        ),
        actions: <Widget>[
          Icon(
            Icons.notifications,
            size: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Icon(
              Icons.shopping_cart,
              size: 20,
            ),
          ),
            /*children: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: null,
            child: const Text('Disabled'),
          ), */
          ElevatedButton(
          onPressed: () {
          Navigator.pushNamed(context,'/LoginScreen');
          },
          child: const Text('Login'))
        ],
      ),
      drawer: Drawer(
        child: Drawerfile(),
      ),
      body: Body(),
    );
  }
}
