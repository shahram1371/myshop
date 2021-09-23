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
                  fontSize: 25.0,
                ),
              ),
            ),
            centerTitle: true,
            leading: Icon(
              Icons.shopping_basket_outlined,
              size: 25.0,
              color: Colors.blueGrey,
            ),
            actions: [
              Icon(
                Icons.search_outlined,
                color: Colors.blueGrey,
                size: 25.0,
              )
            ],
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
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: Colors.white,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 8.0,
                        right: 8.0,
                      ),
                      child: Text(
                        "کفش",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  height: 220.0,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      reverse: true,
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                              )
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          margin: EdgeInsets.all(7.0),
                          width: 150.0,
                          child: Center(child: Text("box $index")),
                        );
                      }),
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                    )
                  ]),
                  width: MediaQuery.of(context).size.width,
                  height: 150.0,
                  child: Center(
                    child: Text(
                      "جای تبلیغ",
                      style: TextStyle(
                          fontSize: 20.0, backgroundColor: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 7.0),
                  child: Container(
                    color: Colors.white,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 8.0,
                          right: 8.0,
                        ),
                        child: Text(
                          "لباس",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  height: 220.0,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      reverse: true,
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                              )
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          margin: EdgeInsets.all(7.0),
                          width: 150.0,
                          child: Center(child: Text("box $index")),
                        );
                      }),
                ),
              ],
            ),
          )),
    );
  }
}
