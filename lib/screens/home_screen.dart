import 'dart:math';

import 'package:flutter/material.dart';
import 'package:kombazaar/config/config.dart';
import 'package:kombazaar/screens/home_screen.dart';
import 'package:kombazaar/utils/theme.dart';
import 'package:kombazaar/screens/home_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //appbar
      appBar: AppBar(
        leadingWidth: 250,
        leading: Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  Paths.logo,
                ),
                alignment: Alignment.center,
                fit: BoxFit.contain),
          ),
        ),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
              width: 10,
            ),
            Text(
              "Home",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "About us",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Blog",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Contact Us",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        actions: [
          Container(
              margin: EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Text(
                'login',
                style: Theme.of(context).textTheme.titleSmall,
              )),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart_checkout),
            onPressed: () {},
          ),
        ],
      ), //end of appbar

      body: ListView(
        scrollDirection: Axis.vertical,
        clipBehavior: Clip.antiAlias,
        shrinkWrap: false,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      clipBehavior: Clip.antiAlias,
                      width: double.infinity,
                      height: 500,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color.fromARGB(255, 185, 206, 238),
                              Color.fromARGB(255, 225, 229, 236),
                            ]),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Stack(alignment: Alignment.center, children: [
                        Positioned(
                          left: (MediaQuery.of(context).size.width - 1070) / 2,
                          top: (MediaQuery.of(context).size.height - 470) / 2,
                          child: Text('Beats solo',
                              style: Theme.of(context).textTheme.bodySmall),
                        ),
                        Positioned(
                          left: (MediaQuery.of(context).size.width - 1070) / 2,
                          top: (MediaQuery.of(context).size.height - 430) / 2,
                          child: Text(
                            'Wireless',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ),
                        Positioned(
                          top: (MediaQuery.of(context).size.height - 350) / 2,
                          child: Text(
                            'Headphones',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ),
                        Positioned(
                          right:
                              (MediaQuery.of(context).size.width - 600.0) / 2,
                          top: (MediaQuery.of(context).size.height - 600.0) / 2,
                          child: Image.asset(
                            Paths.beats,
                            scale: 4,
                            colorBlendMode: BlendMode.lighten,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Positioned(
                          left:
                              (MediaQuery.of(context).size.width - 1000.0) / 2,
                          bottom:
                              (MediaQuery.of(context).size.height - 400.0) / 2,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text("Shop by Category"),
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        ),
                      ]),
                    ),
                    //end of main card

                    Container(
                      //1st row
                      padding: EdgeInsets.all(10),
                      width: double.infinity,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                height: 250,
                                width: 250,
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(
                                      colors: [
                                        Color.fromARGB(255, 22, 10, 10),
                                        Color.fromARGB(255, 22, 11, 11),
                                        Color.fromARGB(255, 17, 9, 9)
                                      ],
                                      begin: Alignment.bottomRight,
                                      end: Alignment.topCenter),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      child: Image.asset(
                                        Paths.buds,
                                        fit: BoxFit.fitHeight,
                                        scale: 3,
                                      ),
                                    ),
                                    Positioned(
                                      top: (MediaQuery.of(context).size.height -
                                              500) /
                                          4,
                                      child: Text(
                                        'Enjoy',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall,
                                      ),
                                    ),
                                    Positioned(
                                      top: (MediaQuery.of(context).size.height -
                                              400) /
                                          4,
                                      child: Text(
                                        'With',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium,
                                      ),
                                    ),
                                    Positioned(
                                      bottom:
                                          (MediaQuery.of(context).size.height -
                                                  450) /
                                              2,
                                      child: Text(
                                        'Earphones',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge,
                                      ),
                                    ),
                                    Positioned(
                                      bottom:
                                          (MediaQuery.of(context).size.height -
                                                  550) /
                                              2,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        child: Text(
                                          "Browse",
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.redAccent,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                //end of first stack
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 250,
                                width: 250,
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(
                                      colors: [
                                        Color.fromARGB(255, 255, 232, 21),
                                        Color.fromARGB(255, 255, 232, 21),
                                        Color.fromARGB(255, 255, 232, 21)
                                      ],
                                      begin: Alignment.bottomRight,
                                      end: Alignment.topCenter),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: (MediaQuery.of(context).size.height -
                                              500) /
                                          4,
                                      child: Text(
                                        'New',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall,
                                      ),
                                    ),
                                    Positioned(
                                      top: (MediaQuery.of(context).size.height -
                                              400) /
                                          4,
                                      child: Text(
                                        'Wearable',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium,
                                      ),
                                    ),
                                    Positioned(
                                      right: 20,
                                      top: 30,
                                      child: Image.asset(
                                        Paths.watch,
                                        fit: BoxFit.fitHeight,
                                        scale: 6,
                                      ),
                                    ),
                                    Positioned(
                                      bottom:
                                          (MediaQuery.of(context).size.height -
                                                  450) /
                                              2,
                                      child: Text(
                                        'Gadgets',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge,
                                      ),
                                    ),
                                    Positioned(
                                      bottom:
                                          (MediaQuery.of(context).size.height -
                                                  550) /
                                              2,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        child: Text(
                                          "Browse",
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Color.fromARGB(
                                              255, 255, 255, 255),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ), //end of second stack
                            Container(
                              height: 250,
                              width: 600,
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(
                                    colors: [
                                      Color.fromARGB(255, 100, 7, 7),
                                      Color.fromARGB(255, 146, 34, 34),
                                      Color.fromARGB(255, 51, 17, 17)
                                    ],
                                    begin: Alignment.bottomRight,
                                    end: Alignment.topCenter),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    right: 20,
                                    child: Image.asset(
                                      Paths.laptop,
                                      fit: BoxFit.fitHeight,
                                      scale: 8,
                                    ),
                                  ),
                                  Positioned(
                                    top: (MediaQuery.of(context).size.height -
                                            500) /
                                        4,
                                    child: Text(
                                      'Laptops',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall,
                                    ),
                                  ),
                                  Positioned(
                                    top: (MediaQuery.of(context).size.height -
                                            400) /
                                        4,
                                    child: Text(
                                      '&',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium,
                                    ),
                                  ),
                                  Positioned(
                                    bottom:
                                        (MediaQuery.of(context).size.height -
                                                450) /
                                            2,
                                    child: Text(
                                      'Accessories',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge,
                                    ),
                                  ),
                                  Positioned(
                                    bottom:
                                        (MediaQuery.of(context).size.height -
                                                550) /
                                            2,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Browse",
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.redAccent,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ), //end of third stack
                            ),
                          ]),
                    ), //end of first row
                    //2nd row
                    Container(
                      padding: EdgeInsets.all(10),
                      width: double.infinity,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 250,
                              width: 600,
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(
                                    colors: [
                                      Color.fromARGB(200, 222, 223, 231),
                                      Color.fromARGB(255, 222, 223, 231),
                                      Color.fromARGB(150, 222, 223, 231)
                                    ],
                                    begin: Alignment.bottomRight,
                                    end: Alignment.topCenter),
                              ),
                              //2nd row
                              child: Stack(
                                children: [
                                  Positioned(
                                    child: Image.asset(
                                      Paths.ps5,
                                      fit: BoxFit.fitHeight,
                                      scale: 4,
                                    ),
                                  ),
                                  Positioned(
                                    top: (MediaQuery.of(context).size.height -
                                            500) /
                                        4,
                                    child: Text(
                                      'Best',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall,
                                    ),
                                  ),
                                  Positioned(
                                    top: (MediaQuery.of(context).size.height -
                                            400) /
                                        4,
                                    child: Text(
                                      'Gaming',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium,
                                    ),
                                  ),
                                  Positioned(
                                    bottom:
                                        (MediaQuery.of(context).size.height -
                                                450) /
                                            2,
                                    child: Text(
                                      'console',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge,
                                    ),
                                  ),
                                  Positioned(
                                    bottom:
                                        (MediaQuery.of(context).size.height -
                                                550) /
                                            2,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Browse",
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.redAccent,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              //end of first stack
                            ),
                            Expanded(
                              child: Container(
                                height: 250,
                                width: 250,
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(
                                      colors: [
                                        Color.fromARGB(200, 6, 100, 201),
                                        Color.fromARGB(250, 6, 100, 201),
                                        Color.fromARGB(150, 6, 100, 201)
                                      ],
                                      begin: Alignment.bottomRight,
                                      end: Alignment.topCenter),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: (MediaQuery.of(context).size.height -
                                              500) /
                                          4,
                                      child: Text(
                                        'Play',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall,
                                      ),
                                    ),
                                    Positioned(
                                      top: (MediaQuery.of(context).size.height -
                                              400) /
                                          4,
                                      child: Text(
                                        'Games On ',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium,
                                      ),
                                    ),
                                    Positioned(
                                      right: 20,
                                      top: 30,
                                      child: Image.asset(
                                        Paths.vr,
                                        fit: BoxFit.fitHeight,
                                        scale: 2,
                                      ),
                                    ),
                                    Positioned(
                                      bottom:
                                          (MediaQuery.of(context).size.height -
                                                  450) /
                                              2,
                                      child: Text(
                                        'Oculus',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge,
                                      ),
                                    ),
                                    Positioned(
                                      bottom:
                                          (MediaQuery.of(context).size.height -
                                                  550) /
                                              2,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        child: Text(
                                          "Browse",
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.redAccent,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ), //end of second stack
                            Expanded(
                              child: Container(
                                height: 250,
                                width: 500,
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(
                                      colors: [
                                        Color.fromARGB(255, 103, 6, 184),
                                        Color.fromARGB(200, 103, 6, 184),
                                        Color.fromARGB(150, 103, 6, 184),
                                      ],
                                      begin: Alignment.bottomRight,
                                      end: Alignment.topCenter),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      right: 20,
                                      child: Image.asset(
                                        Paths.speaker,
                                        fit: BoxFit.fitHeight,
                                        scale: 7,
                                      ),
                                    ),
                                    Positioned(
                                      top: (MediaQuery.of(context).size.height -
                                              500) /
                                          4,
                                      child: Text(
                                        'New',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall,
                                      ),
                                    ),
                                    Positioned(
                                      top: (MediaQuery.of(context).size.height -
                                              400) /
                                          4,
                                      child: Text(
                                        'Amazing',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium,
                                      ),
                                    ),
                                    Positioned(
                                      bottom:
                                          (MediaQuery.of(context).size.height -
                                                  450) /
                                              2,
                                      child: Text(
                                        'Speaker',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge,
                                      ),
                                    ),
                                    Positioned(
                                      bottom:
                                          (MediaQuery.of(context).size.height -
                                                  550) /
                                              2,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        child: Text(
                                          "Browse",
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.redAccent,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ), //end of third stack
                              ),
                            ),
                          ]),
                    ),
                  ],
                ),
              ), //end of 2nd row
              Container(
                alignment: Alignment.center,
                clipBehavior: Clip.none,
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //1st icon
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.airplane_ticket,
                            size: 35,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Free Shipping',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromARGB(255, 26, 21, 21)),
                              ),
                              Text(
                                'free shipping on all orders',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromARGB(255, 197, 28, 28)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    //2nd icon
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.airplane_ticket_rounded,
                            size: 30,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Free Shipping',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromARGB(255, 26, 21, 21)),
                              ),
                              Text(
                                'free shipping on all orders',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromARGB(255, 139, 31, 31)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    //3rd icon
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.airplane_ticket_rounded,
                            size: 30,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Free Shipping',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromARGB(255, 26, 21, 21)),
                              ),
                              Text(
                                'free shipping on all orders',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromARGB(255, 134, 27, 27)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    //4th icon
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.airplane_ticket_rounded,
                            size: 30,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Free Shipping',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromARGB(255, 26, 21, 21)),
                              ),
                              Text(
                                'free shipping on all orders',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromARGB(255, 131, 32, 32)),
                              ),
                            ],
                          ),
                        ],
                      ),
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
