import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PetCard extends StatelessWidget {
  PetCard(
      {super.key,
      this.coat,
      this.originated,
      this.weight,
      this.age,
      this.gender,
      this.name,
      this.imageURL,
      required this.onTap});
  String? name;
  String? gender;
  String? coat;
  String? originated;
  String? age;
  String? weight;
  String? imageURL;
  Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          color: Colors.lime.shade50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  "$imageURL",
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                children: [
                  Text(
                    "$name",
                    style: TextStyle(
                        color: Color.fromARGB(255, 236, 90, 139),
                        fontFamily: 'AmaticSC',
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Text(
                        "Coat",
                        style: TextStyle(
                            color: Color.fromARGB(255, 236, 90, 139),
                            fontFamily: 'AmaticSC',
                            fontSize: 20),
                      ),
                      Text(
                        "$coat",
                        style: TextStyle(
                            color: Color.fromARGB(255, 236, 90, 139),
                            fontFamily: 'AmaticSC',
                            fontSize: 20),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Text(
                        "Age",
                        style: TextStyle(
                            color: Color.fromARGB(255, 236, 90, 139),
                            fontFamily: 'AmaticSC',
                            fontSize: 20),
                      ),
                      Text(
                        "$age yrs",
                        style: TextStyle(
                            color: Color.fromARGB(255, 236, 90, 139),
                            fontFamily: 'AmaticSC',
                            fontSize: 20),
                      )
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(20)),
                          color: Colors.lime.shade500),
                      child: Text(
                        "$gender",
                        style: TextStyle(
                            color: Color.fromARGB(255, 236, 90, 139),
                            fontFamily: 'AmaticSC',
                            fontSize: 20),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Text(
                        "Originated",
                        style: TextStyle(
                            color: Color.fromARGB(255, 236, 90, 139),
                            fontFamily: 'AmaticSC',
                            fontSize: 20),
                      ),
                      Text("$originated",
                          style: TextStyle(
                              fontSize: 17, color: Colors.lime.shade600))
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Text(
                        "Weight",
                        style: TextStyle(
                            color: Color.fromARGB(255, 236, 90, 139),
                            fontFamily: 'AmaticSC',
                            fontSize: 20),
                      ),
                      Text("$weight Pounds",
                          style: TextStyle(
                              fontSize: 17, color: Colors.lime.shade600))
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
