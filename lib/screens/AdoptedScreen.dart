import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:petshop/main.dart';

class adopted_Screen extends StatelessWidget {
  const adopted_Screen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime.shade300,
      appBar: AppBar(
        backgroundColor: Colors.lime,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: SweepGradient(colors: [
          Colors.lime,
          Color.fromARGB(255, 242, 255, 122),
          Colors.lime
        ])),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                "icons/smiling-face.png",
                width: 300,
                height: 300,
              ),
            ),
            Text(
              "Adopted",
              style: TextStyle(
                  color: Color.fromARGB(255, 236, 90, 139),
                  fontFamily: 'AmaticSC',
                  fontSize: 40),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MyApp();
                }));
              },
              child: Text(
                "Finish",
                style: TextStyle(
                    color: Color.fromARGB(255, 236, 90, 139),
                    fontFamily: 'AmaticSC',
                    fontSize: 40),
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.lime),
            )
          ],
        ),
      ),
    );
  }
}
