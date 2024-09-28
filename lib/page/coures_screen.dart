import 'package:flutter/material.dart';

import '../theme.dart';
import '../widget/subject_item.dart';

class CouresScreen extends StatefulWidget {
  const CouresScreen({super.key});

  @override
  State<CouresScreen> createState() => _CouresScreenState();
}

class _CouresScreenState extends State<CouresScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16),
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
          child: Column(
            children: [
              SizedBox(
                height: 70,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      bool isSelected = selectedIndex == index;

                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Container(
                            height: 55,
                            width: 300,
                            decoration: BoxDecoration(
                                color: isSelected
                                    ? Colors.indigo.shade900
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                    width: 1, color: Colors.grey.shade300)),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 16, top: 4, right: 8, bottom: 4),
                              child: Row(
                                children: [
                                  const CircleAvatar(
                                    radius: 15,
                                    backgroundColor: Colors.white,
                                    child: Icon(Icons.code),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Web & App Development",
                                        style: TextStyle(
                                          color: isSelected
                                              ? Colors.white
                                              : Colors.black,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        ".30 Coures",
                                        style: TextStyle(
                                          color: isSelected
                                              ? Colors.white
                                              : Colors.black,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, indxt) {
                        return Padding(
                          padding: EdgeInsets.all(16),
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
                        );
                      }))
            ],
          ),
        ),
      )),
    );
  }
}
