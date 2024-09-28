import 'package:education/widget/seach_screen.dart';
import 'package:flutter/material.dart';

import '../theme.dart';
import '../widget/subject_item.dart';

class DashbordScreen extends StatefulWidget {
  const DashbordScreen({super.key});

  @override
  State<DashbordScreen> createState() => _DashbordScreenState();
}

class _DashbordScreenState extends State<DashbordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 30, right: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.amber,
                child: Image.asset("assets/Profile.png"),
              ),
              const SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "MD Nadim Islam",
                    style: regularTextStyle.copyWith(fontSize: 20),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Let's start larning",
                    style: blackTextStyle.copyWith(fontSize: 14),
                  ),
                ],
              ),
              Spacer(),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SeachScreen()));
                },
                child: Image.asset(
                  'assets/btn_search.png',
                  width: 43,
                ),
              )
            ],
          ),
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xffFFFBFB),
                Color(0xffEEEEEE),
              ],
            ),
          ),
          child: ListView(
            children: [
              Container(
                margin: const EdgeInsets.all(16.0),
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xff99B7FF),
                      Color(0xff6077F7),
                    ],
                  ),
                  color: Colors.purple[900],
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '70% off',
                            style: whiteTextStyle.copyWith(
                              fontSize: 30,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Mar 30 - Apr 5',
                            style: whiteTextStyle.copyWith(fontSize: 15),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 150,
                            height: 50,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xffFE876C),
                                  Color(0xffFD5D37),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(
                                30.0,
                              ),
                            ),
                            child:
                                //  FlatButton(
                                //   onPressed: () {},
                                //   shape: RoundedRectangleBorder(
                                //     borderRadius: BorderRadius.circular(17),
                                //   ),
                                //   child: Text(
                                //     'Join Now',
                                //     style: whiteTextStyle.copyWith(fontSize: 18),
                                //   ),
                                // ),
                                Center(
                              child: Text(
                                'Join Now',
                                style: whiteTextStyle.copyWith(fontSize: 18),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/course.png',
                            width: 130,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              //Subject
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: edge),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'MY Coures',
                        style: blackTextStyle.copyWith(fontSize: 20),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: edge),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        'See all',
                        style: softpurpleColorTextStyle.copyWith(fontSize: 14),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: edge),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SubjectItem(
                      name: 'Mathematics',
                      imageUrl: 'assets/pic1.png',
                    ),
                    SubjectItem(
                      name: 'Bahasae',
                      imageUrl: 'assets/pic2.png',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: edge),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SubjectItem(
                      name: 'Fisika',
                      imageUrl: 'assets/pic3.png',
                    ),
                    SubjectItem(
                      name: 'Olahraga',
                      imageUrl: 'assets/pic4.png',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
