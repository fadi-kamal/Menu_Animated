import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  double oneHei = 150;
  double twowit = 260;
  bool icoTwo = true;
  bool icoOne = true;
  bool sec = false;
  List<Map> item = [
    {
      "home": Icon(Icons.home),
      "shap": Icon(Icons.favorite),
      "person": Icon(Icons.person),
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      AnimatedPositioned(
          left: 10,
          bottom: 55,
          child: AnimatedContainer(
              height: icoOne == false ? oneHei : 60,
              width: 60,
              decoration: BoxDecoration(
                  color: Colors.amber,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey, blurRadius: 0.5, spreadRadius: 1)
                  ],
                  borderRadius: BorderRadius.circular(10)),
              duration: Duration(milliseconds: 500),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      child: IconButton(
                          onPressed: () {
                            setState(() {
                              icoOne = !icoOne;
                            });
                          },
                          icon: Icon(icoOne == false
                              ? Icons.arrow_circle_down_outlined
                              : Icons.arrow_circle_up_outlined)),
                    ),
                    Text("EN" , style:  TextStyle(fontSize: 20),),
                    Text("AR" , style:  TextStyle(fontSize: 20),),
                    Text("TR" , style:  TextStyle(fontSize: 20),),
                  ],
                ),
              )),
          duration: Duration(seconds: 1)),
      AnimatedPositioned(
          left: 50,
          bottom: 11,
          child: AnimatedContainer(
              alignment: Alignment.centerRight,
              height: 60,
              width: icoTwo ? 60 : twowit,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(color: Colors.grey, blurRadius: 0.5, spreadRadius: 1)
              ], color: Colors.amber, borderRadius: BorderRadius.circular(10)),
              duration: Duration(milliseconds: 500),
              child: SingleChildScrollView(
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: IconButton(
                          padding: EdgeInsets.all(0),
                          onPressed: () {
                            setState(() {
                              icoTwo = !icoTwo;
                            });
                          },
                          icon: Icon(icoTwo
                              ? Icons.arrow_circle_right_outlined
                              : Icons.arrow_circle_left_outlined)),
                    ),
                    SizedBox(
                      width: 1,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              sec = !sec;
                            });
                          },
                          child: Transform.scale(
                              scale: sec== false ? 1.2 : 2.2, child: Icon(Icons.home)),
                        ),
                         SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.person),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.favorite),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.share),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.message),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.settings),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    )
                  ],
                ),
              )),
          duration: Duration(seconds: 1)),
      AnimatedPositioned(
          left: 10,
          bottom: 10,
          child: InkWell(
            onTap: (() {
              setState(() {});
            }),
            child: AnimatedContainer(
                height: 65,
                width: 60,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                duration: Duration(seconds: 1),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(child: Icon(Icons.menu)),
                  ],
                )),
          ),
          duration: Duration(seconds: 1))
    ]);
  }
}
