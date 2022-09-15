import 'package:flutter/material.dart';
import 'package:petshop/main.dart';
import 'package:petshop/screens/Type_of_pets.dart';

class ScOne extends StatefulWidget {
  const ScOne({super.key});

  @override
  State<ScOne> createState() => _ScOneState();
}

class _ScOneState extends State<ScOne> {
  String snackTypes = "Second floor apartment";
  int sure = 1;
  bool check1 = false;
  bool check2 = false;
  bool check3 = false;
  bool check4 = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'AmaticSC'),
      home: Scaffold(
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
          child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                shadowColor: Colors.pink,
                backgroundColor: Colors.lime,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MyApp();
                }));
              },
              icon: Icon(
                Icons.home,
                color: Colors.pink,
              ),
              label: Text("")),
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: SweepGradient(colors: [
            Colors.lime,
            Color.fromARGB(255, 242, 255, 122),
            Colors.lime
          ])),
          child: ListView(children: [
            Column(
              children: [
                Container(
                    width: 300,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 160, 206, 229),
                        border: Border.all(
                            color: Colors.pink,
                            width: 3,
                            style: BorderStyle.solid,
                            strokeAlign: StrokeAlign.center),
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "What type of bulding do you live in?",
                      style: TextStyle(
                          fontFamily: 'AmaticSC',
                          color: Color.fromARGB(255, 85, 2, 30),
                          fontSize: 25),
                      textAlign: TextAlign.center,
                    )),
                Center(
                  child: DropdownButton(
                    dropdownColor: Color.fromARGB(255, 228, 240, 124),
                    iconEnabledColor: Colors.blueGrey,
                    iconDisabledColor: Colors.blueGrey,
                    value: snackTypes,
                    items: [
                      DropdownMenuItem(
                        child: Text(
                          "House",
                          style: TextStyle(color: Colors.white),
                        ),
                        value: 'one floor house',
                      ),
                      DropdownMenuItem(
                        child: Text(
                          "First floor apartment",
                          style: TextStyle(color: Colors.white),
                        ),
                        value: 'First floor apartment',
                      ),
                      DropdownMenuItem(
                        child: Text(
                          "Second floor apartment",
                          style: TextStyle(color: Colors.white),
                        ),
                        value: 'Second floor apartment',
                      )
                    ],
                    onChanged: (val) {
                      setState(() {
                        snackTypes = val.toString();
                      });
                    },
                  ),
                ),
                Container(
                    width: 300,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 160, 206, 229),
                        border: Border.all(
                            color: Colors.pink,
                            width: 3,
                            style: BorderStyle.solid,
                            strokeAlign: StrokeAlign.center),
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "Reasons to own a pet",
                      style: TextStyle(
                          fontFamily: 'AmaticSC',
                          color: Color.fromARGB(255, 85, 2, 30),
                          fontSize: 25),
                      textAlign: TextAlign.center,
                    )),
                CheckboxListTile(
                  // secondary: Image.asset("images/1.jpg"),
                  title: Text(
                    "Lonly",
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    "Just want some company",
                  ),
                  activeColor: Colors.blueGrey,
                  checkColor: Colors.pink,
                  isThreeLine: true,
                  value: check1,
                  onChanged: (val) {
                    setState(() {
                      check1 = val!;
                    });
                  },
                ),
                CheckboxListTile(
                  // secondary: Image.asset("images/2.jpg"),
                  title: Text(
                    "Help",
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    "Therapy animal",
                  ),
                  activeColor: Colors.blueGrey,
                  checkColor: Colors.pink,
                  isThreeLine: true,
                  value: check2,
                  onChanged: (val) {
                    setState(() {
                      check2 = val!;
                    });
                  },
                ),
                CheckboxListTile(
                  // secondary: Image.asset("images/3.jpg"),
                  title: Text(
                    "Bored",
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    "Fuzzy friend",
                  ),
                  activeColor: Colors.blueGrey,
                  checkColor: Colors.pink,
                  isThreeLine: true,
                  value: check3,
                  onChanged: (val) {
                    setState(() {
                      check3 = val!;
                    });
                  },
                ),
                CheckboxListTile(
                  // secondary: Image.asset("images/4.jpg"),
                  title: Text(
                    "A new life style",
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    "A pet to take care of",
                  ),
                  activeColor: Colors.blueGrey,
                  checkColor: Colors.pink,
                  isThreeLine: true,
                  value: check4,
                  onChanged: (val) {
                    setState(() {
                      check4 = val!;
                    });
                  },
                ),
                Container(
                    width: 300,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 160, 206, 229),
                        border: Border.all(
                            color: Colors.pink,
                            width: 3,
                            style: BorderStyle.solid,
                            strokeAlign: StrokeAlign.center),
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "Do you own other pets",
                      style: TextStyle(
                          fontFamily: 'AmaticSC',
                          color: Color.fromARGB(255, 85, 2, 30),
                          fontSize: 25),
                      textAlign: TextAlign.center,
                    )),
                ListTile(
                  title: Text(
                    "No!",
                    style: TextStyle(color: Colors.white),
                  ),
                  isThreeLine: true,
                  leading: Radio(
                    value: 1,
                    groupValue: sure,
                    onChanged: (value) {
                      setState(() {
                        sure = value!;
                      });
                    },
                  ),
                  subtitle: Text("this is my first pet"),
                  trailing: Icon(
                    Icons.pets,
                    color: Colors.pink,
                  ),
                ),
                ListTile(
                  title: Text(
                    "yes",
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: Radio(
                    value: 2,
                    groupValue: sure,
                    onChanged: (value) {
                      setState(() {
                        sure = value!;
                      });
                    },
                  ),
                  subtitle: Text("I have other pets"),
                  isThreeLine: true,
                  trailing: Icon(
                    Icons.pets_outlined,
                    color: Colors.pink,
                  ),
                ),
                Center(
                  child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        shadowColor: Colors.lime,
                        backgroundColor: Colors.pink,
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return TypeOfPet();
                        }));
                      },
                      icon: Icon(
                        Icons.next_week,
                        color: Colors.lime,
                      ),
                      label: Text("")),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
