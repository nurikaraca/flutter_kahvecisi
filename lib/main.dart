import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        //fontFamily: 'Caveat',
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dash Coffee Bar'), actions: [
        IconButton(
          icon: const Icon(Icons.add_shopping_cart_sharp),
          onPressed: () {},
        ),
      ]),
      backgroundColor: Colors.brown[100],
      body: SafeArea(
        child: Center(
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            const CircleAvatar(
              radius: 90.0,
              backgroundImage: AssetImage('assets/images/kahve.jpg'),
            ),
            Text(
              'Dash Coffee Bar',
              style: TextStyle(
                fontFamily: 'Caveat',
                fontSize: 45,
                color: Colors.pink[600],
              ),
            ),
            Text(
              'Can I have some coffee?',
              style: TextStyle(
                fontSize: 16,
                color: Colors.pink[900],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Card(
              margin: MyMargin().myMargin,
              color: Colors.brown[200],
              child: ListTile(
                leading: const Icon(
                  Icons.mail,
                  color: Colors.white,
                ),
                title: Text(
                  'dashcoffeebar@info.com',
                  style: TextStyle(
                    fontFamily: 'Caveat',
                    fontSize: 23,
                    color: Colors.pink[600],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const _CardWidget(),
          ]),
        ),
      ),
    );
  }
}

class _CardWidget extends StatelessWidget {
  const _CardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: MyMargin().myMargin,
      color: Colors.brown[200],
      child: const ListTile(
        leading: Icon(
          Icons.phone,
          color: Colors.white,
        ),
        title: Text(
          '+6568743436464',
          style: TextStyle(),
        ),
      ),
    );
  }
}

class MyMargin{
  final myMargin  = const  EdgeInsets.symmetric(horizontal: 45.0);
}