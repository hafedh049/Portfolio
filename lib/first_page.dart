import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/contact.dart';
import 'package:portfolio/landscape/home.dart' as home_l;
import 'package:portfolio/portrait/home.dart' as home_p;
import 'package:portfolio/resume.dart';

class Navior extends StatefulWidget {
  const Navior({super.key});

  @override
  State<Navior> createState() => _NaviorState();
}

class _NaviorState extends State<Navior> with TickerProviderStateMixin {
  late AnimationController menuController;
  List<bool> menu = <bool>[
    false,
    false,
    false,
  ];
  List<Widget> screensMinimized = <Widget>[
    const home_p.Home(),
    const Resume(),
    const Contact()
  ];
  List<Widget> screensMaximized = <Widget>[
    const home_l.Home(),
    const Resume(),
    const Contact()
  ];
  PageController pageController = PageController();
  @override
  void dispose() {
    menuController.dispose();
    pageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    menuController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: LayoutBuilder(
        builder: (p0, p1) {
          if (p1.maxWidth <= 950) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  PageView(
                    controller: pageController,
                    physics: const NeverScrollableScrollPhysics(),
                    children: screensMinimized,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(64.0),
                    child: Row(
                      children: [
                        Text(
                          "Hafedh",
                          style: GoogleFonts.actor(
                            textStyle: const TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        const Text(" "),
                        Text(
                          "Gunichi",
                          style: GoogleFonts.actor(
                            textStyle: const TextStyle(
                              color: Colors.white70,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        const Spacer(),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () {
                            if (menuController.status.index == 0) {
                              menuController.forward();

                              showDialog(
                                context: context,
                                builder: (context) {
                                  return BackdropFilter(
                                    filter: ImageFilter.blur(
                                      sigmaX: 4,
                                      sigmaY: 4,
                                    ),
                                    child: AlertDialog(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      backgroundColor: const Color.fromARGB(
                                              255, 17, 255, 160)
                                          .withOpacity(.1),
                                      content: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .6,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              .8,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () {
                                                  setState(() {
                                                    pageController.animateToPage(
                                                        0,
                                                        duration:
                                                            const Duration(
                                                                milliseconds:
                                                                    700),
                                                        curve: Curves.linear);
                                                  });
                                                  Navigator.pop(context);
                                                },
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "Home",
                                                      style:
                                                          GoogleFonts.anybody(
                                                        textStyle: TextStyle(
                                                          color: Colors.blueGrey
                                                              .shade100,
                                                          fontSize: 20,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      height: 2,
                                                      width: "Home".length * 15,
                                                      color: Colors.green,
                                                    )
                                                  ],
                                                ),
                                              ),
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () {
                                                  setState(() {
                                                    pageController.animateToPage(
                                                        1,
                                                        duration:
                                                            const Duration(
                                                                milliseconds:
                                                                    700),
                                                        curve: Curves.linear);
                                                  });
                                                  Navigator.pop(context);
                                                },
                                                child: Column(
                                                  children: [
                                                    Text("Resume",
                                                        style:
                                                            GoogleFonts.anybody(
                                                          textStyle: TextStyle(
                                                            color: Colors
                                                                .blueGrey
                                                                .shade100,
                                                            fontSize: 20,
                                                          ),
                                                        )),
                                                    Container(
                                                      height: 2,
                                                      width:
                                                          "Resume".length * 12,
                                                      color: Colors.green,
                                                    )
                                                  ],
                                                ),
                                              ),
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () {
                                                  setState(() {
                                                    pageController.animateToPage(
                                                        2,
                                                        duration:
                                                            const Duration(
                                                                milliseconds:
                                                                    700),
                                                        curve: Curves.linear);
                                                  });
                                                  Navigator.pop(context);
                                                },
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "Contact",
                                                      style:
                                                          GoogleFonts.anybody(
                                                        textStyle: TextStyle(
                                                          color: Colors.blueGrey
                                                              .shade100,
                                                          fontSize: 20,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      height: 2,
                                                      width:
                                                          "Contact".length * 11,
                                                      color: Colors.green,
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          )),
                                    ),
                                  );
                                },
                              ).then((value) => menuController.reverse());
                            } else {
                              menuController.reverse();
                            }
                          },
                          child: AnimatedIcon(
                            icon: AnimatedIcons.menu_close,
                            color: Colors.white,
                            size: 30,
                            progress: menuController,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          } else {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  PageView(
                    physics: const NeverScrollableScrollPhysics(),
                    controller: pageController,
                    children: screensMaximized,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(64.0),
                    child: Row(
                      children: [
                        Text(
                          "Hafedh",
                          style: GoogleFonts.actor(
                            textStyle: const TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        const Text(" "),
                        Text(
                          "Gunichi",
                          style: GoogleFonts.actor(
                            textStyle: const TextStyle(
                              color: Colors.white70,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        const Spacer(),
                        InkWell(
                          onHover: (value) {
                            if (value) {
                              menu[0] = true;
                            } else {
                              menu[0] = false;
                            }
                            setState(() {});
                          },
                          onTap: () {
                            setState(() {
                              pageController.animateToPage(0,
                                  duration: const Duration(milliseconds: 700),
                                  curve: Curves.linear);
                            });
                          },
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          child: Container(
                            color: Colors.transparent,
                            width: 80,
                            height: 40,
                            child: AnimatedSwitcher(
                              duration: const Duration(milliseconds: 500),
                              child: menu[0]
                                  ? Column(
                                      children: [
                                        Text(
                                          "Home",
                                          style: GoogleFonts.actor(
                                            textStyle: const TextStyle(
                                              color: Colors.white70,
                                              fontSize: 18,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 5,
                                          width: 60,
                                          color: Colors.lightGreenAccent,
                                        )
                                      ],
                                    )
                                  : Text(
                                      "Home",
                                      style: GoogleFonts.actor(
                                        textStyle: const TextStyle(
                                          color: Colors.white70,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                            ),
                          ),
                        ),
                        InkWell(
                          onHover: (value) {
                            if (value) {
                              menu[1] = true;
                            } else {
                              menu[1] = false;
                            }

                            setState(() {});
                          },
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () {
                            setState(() {
                              pageController.animateToPage(1,
                                  duration: const Duration(milliseconds: 700),
                                  curve: Curves.linear);
                            });
                          },
                          child: Container(
                            color: Colors.transparent,
                            width: 80,
                            height: 40,
                            child: AnimatedSwitcher(
                              duration: const Duration(milliseconds: 500),
                              child: menu[1]
                                  ? Column(
                                      children: [
                                        Text(
                                          "Resume",
                                          style: GoogleFonts.actor(
                                            textStyle: const TextStyle(
                                              color: Colors.white70,
                                              fontSize: 18,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 5,
                                          width: 60,
                                          color: Colors.lightGreenAccent,
                                        )
                                      ],
                                    )
                                  : Text(
                                      "Resume",
                                      style: GoogleFonts.actor(
                                        textStyle: const TextStyle(
                                          color: Colors.white70,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                            ),
                          ),
                        ),
                        InkWell(
                          onHover: (value) {
                            if (value) {
                              menu[2] = true;
                            } else {
                              menu[2] = false;
                            }

                            setState(() {});
                          },
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () {
                            setState(() {
                              pageController.animateToPage(2,
                                  duration: const Duration(milliseconds: 700),
                                  curve: Curves.linear);
                            });
                          },
                          child: Container(
                            width: 80,
                            height: 40,
                            color: Colors.transparent,
                            child: AnimatedSwitcher(
                              duration: const Duration(milliseconds: 500),
                              child: menu[2]
                                  ? Column(
                                      children: [
                                        Text(
                                          "Contacts",
                                          style: GoogleFonts.actor(
                                            textStyle: const TextStyle(
                                              color: Colors.white70,
                                              fontSize: 18,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 5,
                                          width: 60,
                                          color: Colors.lightGreenAccent,
                                        )
                                      ],
                                    )
                                  : Text(
                                      "Contacts",
                                      style: GoogleFonts.actor(
                                        textStyle: const TextStyle(
                                          color: Colors.white70,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
            ;
          }
        },
      ),
    );
  }
}
