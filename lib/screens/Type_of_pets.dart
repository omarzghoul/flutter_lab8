import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:petshop/components/PetCard.dart';
import 'package:petshop/screens/AdoptedScreen.dart';

class TypeOfPet extends StatelessWidget {
  const TypeOfPet({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.lime.shade300,
        appBar: AppBar(
          backgroundColor: Colors.lime.shade700,
          title: Text(
            "Pet Shop",
            style: TextStyle(
                color: Color.fromARGB(255, 236, 90, 139),
                fontFamily: 'AmaticSC',
                fontSize: 40),
          ),
          bottom: TabBar(
              labelColor: Colors.black,
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  text: "",
                  icon: Container(
                    child: Image.asset(
                      "icons/dog.png",
                      width: 30,
                      height: 30,
                    ),
                  ),
                ),
                Tab(
                  text: "",
                  icon: Container(
                    child: Image.asset(
                      "icons/cat.png",
                      width: 30,
                      height: 30,
                    ),
                  ),
                ),
                Tab(
                  text: "",
                  icon: Container(
                    child: Image.asset(
                      "icons/turtle.png",
                      width: 30,
                      height: 30,
                    ),
                  ),
                ),
                Tab(
                  text: "",
                  icon: Container(
                    child: Image.asset(
                      "icons/bird.png",
                      width: 30,
                      height: 30,
                    ),
                  ),
                ),
              ]),
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: SweepGradient(colors: [
            Colors.lime,
            Color.fromARGB(255, 242, 255, 122),
            Colors.lime
          ])),
          child: TabBarView(children: [
            ListView(
              children: [
                PetCard(
                  name: "Jenny",
                  gender: "Female",
                  imageURL:
                      "https://marvel-b1-cdn.bc0a.com/f00000000052994/www.hillspet.com/content/dam/cp-sites/hills/hills-pet/en_us/exported/dog-care/Skyword/images/azawakh-dog-standing-on-path-SW.jpg",
                  age: "11",
                  coat: "Large",
                  originated: "Canada",
                  weight: "25",
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return adopted_Screen();
                      },
                    ));
                  },
                ),
                PetCard(
                  name: "LEO",
                  gender: "Male",
                  imageURL:
                      "https://i.insider.com/5df126b679d7570ad2044f3e?width=1100&format=jpeg&auto=webp",
                  age: "4",
                  coat: "Small",
                  originated: "Canada",
                  weight: "9",
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return adopted_Screen();
                      },
                    ));
                  },
                ),
                PetCard(
                  name: "MAX",
                  gender: "Male",
                  imageURL:
                      "https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/06154034/Akita-standing-outdoors-in-the-summer-400x267.jpg",
                  age: "6",
                  coat: "Medium",
                  originated: "Canada",
                  weight: "18",
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return adopted_Screen();
                      },
                    ));
                  },
                ),
              ],
            ),
            ListView(
              children: [
                PetCard(
                  name: "Lilly",
                  gender: "Female",
                  imageURL:
                      "https://i.kinja-img.com/gawker-media/image/upload/c_fill,f_auto,fl_progressive,g_center,h_675,pg_1,q_80,w_1200/96b0f8c1fc7546deab323b0f6ba9f33a.jpg",
                  age: "1",
                  coat: "Small",
                  originated: "Canada",
                  weight: "7",
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return adopted_Screen();
                      },
                    ));
                  },
                ),
                PetCard(
                  name: "Kitty",
                  gender: "Female",
                  imageURL:
                      "https://img.freepik.com/premium-photo/crossbredeed-cat-wearing-bell-isolated-white_191971-23879.jpg?w=2000",
                  age: "4",
                  coat: "Medium",
                  originated: "Canada",
                  weight: "10",
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return adopted_Screen();
                      },
                    ));
                  },
                ),
                PetCard(
                  name: "Tom",
                  gender: "Male",
                  imageURL:
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/Cat_November_2010-1a.jpg/1200px-Cat_November_2010-1a.jpg",
                  age: "6",
                  coat: "Medium",
                  originated: "Canada",
                  weight: "12",
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return adopted_Screen();
                      },
                    ));
                  },
                ),
              ],
            ),
            ListView(
              children: [
                PetCard(
                  name: "Mack",
                  gender: "Male",
                  imageURL:
                      "https://imgs.mongabay.com/wp-content/uploads/sites/20/2018/12/21142908/adult_green-turtle2_1200px-cropped-768x460.jpg",
                  age: "8",
                  coat: "Medium",
                  originated: "Canada",
                  weight: "20",
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return adopted_Screen();
                      },
                    ));
                  },
                ),
                PetCard(
                  name: "Kiwi",
                  gender: "Female",
                  imageURL:
                      "https://assets.nrdc.org/sites/default/files/styles/header_background/public/m5d62k_1200x630.jpg?itok=Gz9XnO_h",
                  age: "4",
                  coat: "Small",
                  originated: "Canada",
                  weight: "9",
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return adopted_Screen();
                      },
                    ));
                  },
                ),
                PetCard(
                  name: "Flippy",
                  gender: "Male",
                  imageURL:
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f4/Florida_Box_Turtle_Digon3_re-edited.jpg/1200px-Florida_Box_Turtle_Digon3_re-edited.jpg",
                  age: "5",
                  coat: "Small",
                  originated: "Canada",
                  weight: "11",
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return adopted_Screen();
                      },
                    ));
                  },
                ),
              ],
            ),
            ListView(
              children: [
                PetCard(
                  name: "Ava",
                  gender: "Female",
                  imageURL:
                      "https://www.thesprucepets.com/thmb/63v75VJoGecxMB4re_KfA4GYZwc=/2400x2400/smart/filters:no_upscale()/popular-small-bird-species-390926-hero-d3d0af7bb6ed4947b0c3c5afb4784456.jpg",
                  age: "3",
                  coat: "Small",
                  originated: "Canada",
                  weight: "4",
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return adopted_Screen();
                      },
                    ));
                  },
                ),
                PetCard(
                  name: "Bella",
                  gender: "Female",
                  imageURL:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTGAUweXhl-O2JDudb0okQdqV1HDdUvnAmcg&usqp=CAU",
                  age: "4",
                  coat: "Small",
                  originated: "Canada",
                  weight: "9",
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return adopted_Screen();
                      },
                    ));
                  },
                ),
                PetCard(
                  name: "Coco",
                  gender: "Male",
                  imageURL:
                      "https://static.scientificamerican.com/sciam/cache/file/7A715AD8-449D-4B5A-ABA2C5D92D9B5A21_source.png",
                  age: "4",
                  coat: "Small",
                  originated: "Canada",
                  weight: "4",
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return adopted_Screen();
                      },
                    ));
                  },
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
