import 'package:flutter/material.dart';
import 'package:petshop/screens/screen_1.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lime,
        title: Text(
          "Pet Shop",
          style: TextStyle(
              color: Color.fromARGB(255, 236, 90, 139),
              fontFamily: 'AmaticSC',
              fontSize: 40),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.lime,
      ),
      body: Container(
        width: 900,
        height: 900,
        decoration: BoxDecoration(
            gradient: SweepGradient(colors: [
          Colors.lime,
          Color.fromARGB(255, 242, 255, 122),
          Colors.lime
        ])),
        child: ListView(
          children: [
            Column(
              children: [
                Center(
                    child: Text(
                  "Welcome to our PetShop",
                  style: TextStyle(
                    color: Color.fromARGB(255, 236, 90, 139),
                    fontFamily: 'AmaticSC',
                    fontSize: 50,
                  ),
                )),
                Container(
                  child: Image(
                      image: NetworkImage(
                          "https://pixypen.com/wp-content/uploads/2022/06/pet-shop-logo-vector-and-transparent-png.webp")),
                ),
                TextButton.icon(
                    onPressed: () {
                      setState(() {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ScOne();
                        }));
                      });
                    },
                    icon: Icon(
                      Icons.next_plan,
                      color: Colors.pink,
                    ),
                    label: Text("")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
