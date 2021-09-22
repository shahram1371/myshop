import 'package:flutter/material.dart';

class ShopApp extends StatefulWidget {
  @override
  _ShopAppState createState() => _ShopAppState();
}

class _ShopAppState extends State<ShopApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.list_outlined,
            color: Colors.white,
            size: 30.0,
          ),
          onPressed: () {},
          backgroundColor: Colors.green,
          elevation: 2.0,
        ),
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              "فروشگاه",
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 30.0,
              ),
            ),
          ),
          // actions: [
          //   Icon(
          //     Icons.shopping_basket_outlined,
          //     size: 20.0,
          //   )
          // ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          child: Row(
            children: [
              Container(
                // color: Colors.yellow,
                height: 50.0,
                width: MediaQuery.of(context).size.width - 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.info_outline,
                      size: 30.0,
                      color: Colors.blueGrey,
                    ),
                    Icon(
                      Icons.person_outline_sharp,
                      size: 30.0,
                      color: Colors.blueGrey,
                    ),
                    Icon(
                      Icons.home_outlined,
                      size: 30.0,
                      color: Colors.blueGrey,
                    ),
                  ],
                ),
              ),
            ],
          ),
          notchMargin: 6.0,
          shape: CircularNotchedRectangle(),
          elevation: 5.0,
        ),
        body: Column(
          children: [
            Column(
              children: [],
            ),
          ],
        ),
      ),
    );
  }
}
