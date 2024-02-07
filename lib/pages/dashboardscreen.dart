import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';
import '../model/CheckBoxList.dart';
import '../model/CheckBoxQuestionsList.dart';
import 'package:material_icons_named/material_icons_named.dart';


class DashBoardScreen extends StatefulWidget {
  @override
  _StartScreen createState() => _StartScreen();
}
class _StartScreen extends State<DashBoardScreen> {
  @override
  Widget BookManpowerCategory() {
    return Padding(
      padding: const EdgeInsets.only(left: 6,top: 6),
      child: Row(
        children: [
          Container(
              height: MediaQuery.of(context).size.height*0.19,
              width: MediaQuery.of(context).size.width*0.29,
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(8),
              ),
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 1),
                      child: Center(child: Image.asset('assets/images/amd.png',width: 90,)),
                    )),
                Expanded(
                  child: Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 10, vertical: 1),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Text(
                                'Paediatric Nurse',
                                style: TextStyle(
                                    fontSize: 8,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ])),
                )
              ])),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            title: Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.arrow_back),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        "Books Manpower",
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Text(
                          "Search Nurses Near by",
                          style: TextStyle(
                            fontSize: 11,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Indra Nagar Lucknow",
                        style: TextStyle(fontSize: 10, color: Colors.red),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Colors.red,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.shopping_cart,
                ),
              )
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: ListView(
              //page1
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.3,
                  child: AnotherCarousel(
                    images: [
                      Image.asset("assets/images/first.jpg"),
                      Image.asset("assets/images/newtop.jpg",fit: BoxFit.cover,),
                      Image.asset("assets/images/top.jpg")
                    ],
                    dotSize: 4.0,
                    dotSpacing: 15.0,
                    dotColor: Colors.red,
                    indicatorBgPadding: 5.0,
                    dotBgColor: Colors.white.withOpacity(0.5),
                    borderRadius: false,
                    moveIndicatorFromBottom: 180.0,
                    noRadiusForIndicator: true,
                    overlayShadow: true,
                    overlayShadowColors: Colors.white,
                    overlayShadowSize: 0.7,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 30,
                    color: Colors.white,
                    child: IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.call,
                            size: 20,
                            color: Colors.black,
                          ),
                          Text(" Call Employer"),
                          VerticalDivider(
                            color: Colors.grey,
                            thickness: 1,
                          ),
                          Icon(Icons.chat, size: 20, color: Colors.black),
                          Text("Messages"),
                          VerticalDivider(
                            color: Colors.grey,
                            thickness: 1,
                          ),
                          Icon(
                            Icons.history,
                            size: 20,
                            color: Colors.black,
                          ),
                          Text("History"),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Book Manpower By Category',
                        style:
                            TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'View all',
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                SingleChildScrollView(
                  child: Row(
                    children: [
                      BookManpowerCategory(),
                      SizedBox(width: 2,),
                      BookManpowerCategory(),
                      SizedBox(width: 2,),
                      BookManpowerCategory(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      BookManpowerCategory(),
                      SizedBox(width: 2,),
                      BookManpowerCategory(),
                      SizedBox(width: 2,),
                      BookManpowerCategory(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                SectionMore()
                // Add more sections as needed
              ],
            ),
          )),
    );
  }
}

class SectionFour1 extends StatefulWidget {
  @override
  _SectionFour1 createState() => _SectionFour1();
}

class _SectionFour1 extends State<SectionFour1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 20),
          child: Text('How does the process of Manpower booking function ?',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900)),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: checkListData.length,
          itemBuilder: (context, index) {
            return CheckBoxes(index);
          },
        )
      ],
    );
  }

  Widget CheckBoxes(int index) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Checkbox(
              activeColor: const Color(0xFFF87369),
              shape: const CircleBorder(),
              value: checkListData[index].enabled,
              onChanged: (bool? value) {
                setState(() {
                  checkListData[index].enabled = value!;
                });
              },
            ),
            Image(
              width: 10,
              image: AssetImage("assets/images/dotted_line.png"),
            ),
          ],
        ),
        Expanded(
            child: Container(
          margin: EdgeInsets.all(8.0),
          child: Text(
            checkListData[index].data,
            style: TextStyle(fontSize: 16),
          ),
        )),
      ],
    );
  }
}

class SectionFour2 extends StatefulWidget {
  @override
  _SectionFour2 createState() => _SectionFour2();
}

class _SectionFour2 extends State<SectionFour2> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: questionsList.length,
          itemBuilder: (context, index) {
            return CheckBoxes(index);
          },
        )
      ],
    );
  }

  void _onSearchButtonPressed(int index) {
    setState(() {
      questionsList[index].enabled = !questionsList[index].enabled;
    });
  }

  Widget CheckBoxes(int index) {
    return Column(
      children: [
        Container(
          child: Row(
            children: [
              Expanded(
                  child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Text(questionsList[index].data,
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w800,
                        color: Colors.black)),
              )),
              IconButton(
                  onPressed: () {
                    _onSearchButtonPressed(index);
                  },
                  icon: Icon(
                    (questionsList[index].enabled)
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                    color: Colors.black,
                  ))
            ],
          ),
        ),
        (questionsList[index].enabled)
            ? Container(
                margin: EdgeInsets.only(left: 10, bottom: 15),
                alignment: Alignment.centerLeft,
                child: Text(questionsList[index].fullData,
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey)),
              )
            : Container(),
        (index < questionsList.length - 1)
            ? Container(
                height: 2,
                margin: EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(color: Color(0xffe7e7e7)),
              )
            : Container()
      ],
    );
  }
}
class SectionMore extends StatefulWidget {
  const SectionMore({super.key});

  @override
  _SectionMore createState() => _SectionMore();
}

class _SectionMore extends State<SectionMore> {
  Widget SingleProducts() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        height: 230,
        width: 160,
        decoration: BoxDecoration(
          color: Colors.black26,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Expanded(flex: 3, child: Image.asset('assets/images/amd.png')),
          Expanded(
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Paediatric Nurse',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ])),
          )
        ]));
  }

  Widget PopularCategory() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 35),
          child: Expanded(
            child: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(180),
              ),
            ),
          ),
        ),

        Container(
          margin: EdgeInsets.only(top: 5),
          child: Padding(
            padding: const EdgeInsets.only(left: 27),
            child: Text(
              'Paediatric Nurse',
              style: TextStyle(
                  fontSize: 10,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
  Widget Category3() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              height: MediaQuery.of(context).size.height*0.3,
              width: MediaQuery.of(context).size.width*0.42,
              decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(8)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 3),
                        child: Container(child: Image.asset('assets/images/nurse.jpg',fit: BoxFit.fitWidth,width: 140,)),
                      )),
                  Expanded(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [

                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 10,
                                  ),
                                  SizedBox(width: 3,),
                                  Text("4.5"),
                                  SizedBox(width: 2,),
                                  Text("(1230 review)",style: TextStyle(color: Colors.white70,fontSize: 10,),)
                                ],
                              ),
                              Text(
                                'Paediatric Nurse',
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi non quis ',
                                style: TextStyle(
                                    fontSize: 8,
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: SizedBox(
                                      height: 30,
                                      child: Center(
                                        child: TextFormField(
                                          textAlign: TextAlign.center,
                                          decoration: InputDecoration(
                                            focusColor: Colors.red,
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(5),
                                              borderSide: BorderSide(color: Colors.red)
                                            ),

                                           labelText: "Add to Cart",

                                          ),
                                        ),
                                      ),
                                    )
                                  ),
                                ],
                              )
                            ])),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var arrColors = [
      Colors.black,
      Colors.greenAccent,
      Colors.red,Colors.blue,
      Colors.green,
      Colors.amber,
      Colors.blueGrey,
    ];
    return Column(
      children: [
        //page2
        Container(
          margin: EdgeInsets.all(10),
          child: Row(
            children: [
              Text(
                'Check Medicab HealthCard Benefits',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/medi.jpg')),
              color: Colors.cyan,
            ),
          ),
        ),

        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Popular Categories',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Container(

    child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Center(
    child: GridView.count(
    shrinkWrap: true,
    crossAxisCount: 3,
    mainAxisSpacing: 15,
    crossAxisSpacing: 10,
    physics: NeverScrollableScrollPhysics(),
    children: [
    Container(
      height: 50,
    decoration: BoxDecoration(
    color:arrColors[0],

    borderRadius: BorderRadius.circular(180),
    ),
    ),
    Container(decoration: BoxDecoration(
    color:arrColors[1],
    borderRadius: BorderRadius.circular(180),
    )
    ),
    Container(decoration: BoxDecoration(
    color:arrColors[2],
    borderRadius: BorderRadius.circular(180),
    )
    ), Container(decoration: BoxDecoration(
    color:arrColors[3],
    borderRadius: BorderRadius.circular(180),
    )
    ), Container(decoration: BoxDecoration(
    color:arrColors[4],
    borderRadius: BorderRadius.circular(180),
    )
    ), Container(decoration: BoxDecoration(
    color:arrColors[5],
    borderRadius: BorderRadius.circular(180),
    )
    ),
        ]
    ),
    ),
    ),
        ),

        SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Top Rated Manpower',
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Row(
            children:[ Category3(),
              SizedBox(width: 5,),
              Category3(),],
            ),
        SizedBox(height: 10,),
        Row(children: [
          Category3(),
          SizedBox(width: 5,),
          Category3(),
        ],),

        SizedBox(
          height: 25,
        ),

        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: SizedBox(
            height: 110,
            child: Expanded(
              child: AnotherCarousel(
                images: [
                  Image.asset(
                    "assets/images/medi.jpg",
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    "assets/images/top.jpg",
                    fit: BoxFit.cover,
                  )
                ],
                dotSize: 4.0,
                dotSpacing: 15.0,
                dotColor: Colors.lightGreenAccent,
                indicatorBgPadding: 5.0,
                dotBgColor: Colors.white.withOpacity(0.5),
                borderRadius: false,
                moveIndicatorFromBottom: 180.0,
                noRadiusForIndicator: true,
                overlayShadow: true,
                overlayShadowColors: Colors.white,
                overlayShadowSize: 0.7,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        // page4
        SectionFour1(),
        Container(
          height: 5,
          margin: EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(color: Color(0xffe7e7e7)),
        ),
        Container(
          margin: EdgeInsets.only(top: 25, bottom: 5),
          child: Text('Frequently Asked questions',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900)),
        ),
        SectionFour2(),
        Container(
          height: 6,
          margin: EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(color: Color(0xffe7e7e7)),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 20, left: 10, top: 15),
          child: Row(
            children: [
              Expanded(
                  child: Text(
                      "We ensure our customers leave with a smile on their faces!",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                          color: Colors.black))),
              Icon(
                Icons.emoji_emotions,
                color: Color(0xfffcd713),
                size: 50,
              )
            ],
          ),
        ),
        //page5
         Center(
            child: CircleAvatar(
              backgroundImage: ExactAssetImage("assets/images/doctor-img1.png"),
              radius: 45,

            ) ),
        const Center(
            child: Padding(
          padding: EdgeInsets.only(top: 10),
          child: Text("Sourabh Rajpoot",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                  color: Colors.black)),
        )),
        const Center(
            child: Padding(
          padding: EdgeInsets.only(top: 1),
          child: Text("Lucknow",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  color: Colors.blueGrey)),
        )),
        const Center(
            child: Padding(
          padding: EdgeInsets.all(10),
          child: Text(
              "\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi non quis exercitationem culpa nesciunt nihil aut nostrum explicabo reprehenderit optio amet ab temporibus asperiores quasi cupiditate. Voluptatum ducimus voluptates voluptas?\"",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  color: Colors.blueGrey)),
        ))
      ],
    );
  }

}
