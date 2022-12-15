// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'package:dashed_circular_progress_bar/dashed_circular_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

class Resume extends StatefulWidget {
  const Resume({super.key});

  @override
  State<Resume> createState() => _ResumeState();
}

class _ResumeState extends State<Resume> {
  String myDesc =
      "Hello!, I'm Hafedh Gunichi. A Flutter Developer from Tunisia, Sidi-Bouzid. I have rich experience in Mobile,Web,Desktop Applications Development. I have also more than 3 years experience in Python.";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Center(
              child: Text(
                "Resume",
                style: GoogleFonts.anybody(
                  textStyle: TextStyle(
                    color: Colors.blueGrey.shade100,
                    fontSize: 50,
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blueGrey.shade100,
                width: .5,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 200,
                    height: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/2.jpeg"),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, right: 16.0, bottom: 8.0),
                    child: Wrap(
                      children: [
                        for (String text in myDesc.split(RegExp(r" ")))
                          Text(
                            "$text ",
                            style: GoogleFonts.anybody(
                              textStyle: TextStyle(
                                color: Colors.blueGrey.shade100,
                                fontSize: 18,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Age",
                        style: GoogleFonts.anybody(
                          textStyle: const TextStyle(
                            color: Color.fromARGB(255, 17, 255, 160),
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "-->",
                        style: GoogleFonts.anybody(
                          textStyle: const TextStyle(
                            color: Colors.lightBlueAccent,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "21",
                        style: GoogleFonts.anybody(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Residence",
                        style: GoogleFonts.anybody(
                          textStyle: const TextStyle(
                            color: Color.fromARGB(255, 17, 255, 160),
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "-->",
                        style: GoogleFonts.anybody(
                          textStyle: const TextStyle(
                            color: Colors.lightBlueAccent,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Tunisia - Sidi Bouzid",
                        style: GoogleFonts.anybody(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Freelance",
                        style: GoogleFonts.anybody(
                          textStyle: const TextStyle(
                            color: Color.fromARGB(255, 17, 255, 160),
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "-->",
                        style: GoogleFonts.anybody(
                          textStyle: const TextStyle(
                            color: Colors.lightBlueAccent,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Available",
                        style: GoogleFonts.anybody(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Phone",
                        style: GoogleFonts.anybody(
                          textStyle: const TextStyle(
                            color: Color.fromARGB(255, 17, 255, 160),
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "-->",
                        style: GoogleFonts.anybody(
                          textStyle: const TextStyle(
                            color: Colors.lightBlueAccent,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "+216 28 056 362",
                        style: GoogleFonts.anybody(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "E-mail",
                        style: GoogleFonts.anybody(
                          textStyle: const TextStyle(
                            color: Color.fromARGB(255, 17, 255, 160),
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "-->",
                        style: GoogleFonts.anybody(
                          textStyle: const TextStyle(
                            color: Colors.lightBlueAccent,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "hafedhgunichi@gmail.com",
                        style: GoogleFonts.anybody(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  AnimatedButton(
                    text: "Download CV",
                    selectedBackgroundColor:
                        const Color.fromARGB(255, 17, 255, 160),
                    selectedTextColor: Colors.black,
                    onPress: () {
                      AnchorElement anchorElement =
                          AnchorElement(href: "assets/cv.pdf");
                      anchorElement.download = "CV";
                      anchorElement.click();

                      Fluttertoast.showToast(
                        msg: "CV Downloaded",
                        fontSize: 30,
                        webBgColor: "rgb(17, 255, 160)",
                        webPosition: "center",
                        textColor: Colors.black,
                        toastLength: Toast.LENGTH_LONG,
                        timeInSecForIosWeb: 3,
                        webShowClose: true,
                      );
                    },
                    transitionType: TransitionType.CENTER_ROUNDER,
                    textStyle: GoogleFonts.anybody(
                      textStyle: const TextStyle(
                        color: Color.fromARGB(255, 17, 255, 160),
                        fontSize: 18,
                      ),
                    ),
                    backgroundColor: Colors.transparent,
                    height: 60,
                    width: 200,
                    borderColor: const Color.fromARGB(255, 17, 255, 160),
                    borderWidth: 1,
                    borderRadius: 0,
                    animatedOn: AnimatedOn.onHover,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              width: 1,
              height: 60,
              color: Colors.white.withOpacity(.5),
            ),
          ),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              "Services",
              style: GoogleFonts.anybody(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blueGrey.shade100,
                width: .5,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Icon(
                  Icons.code_outlined,
                  size: 40,
                  color: Color.fromARGB(255, 17, 255, 160),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Web Development",
                  style: GoogleFonts.anybody(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 16.0, right: 16.0, bottom: 8.0),
                  child: Wrap(
                    children: [
                      for (String text
                          in "Modern websites that will help you reach all of your marketing."
                              .split(" "))
                        Text(
                          "$text ",
                          style: GoogleFonts.anybody(
                            textStyle: TextStyle(
                              color: Colors.blueGrey.shade200,
                              fontSize: 18,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              width: 1,
              height: 30,
              color: Colors.white.withOpacity(.5),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blueGrey.shade100,
                width: .5,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Icon(
                  Icons.games_outlined,
                  size: 40,
                  color: Color.fromARGB(255, 17, 255, 160),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Game Development",
                  style: GoogleFonts.anybody(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 16.0, right: 16.0, bottom: 8.0),
                  child: Wrap(
                    children: [
                      for (String text
                          in "Developing memorable and unique mobile android, ios and video games."
                              .split(" "))
                        Text(
                          "$text ",
                          style: GoogleFonts.anybody(
                            textStyle: TextStyle(
                              color: Colors.blueGrey.shade200,
                              fontSize: 18,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              width: 1,
              height: 30,
              color: Colors.white.withOpacity(.5),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blueGrey.shade100,
                width: .5,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Icon(
                  Icons.android_outlined,
                  size: 40,
                  color: Color.fromARGB(255, 17, 255, 160),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Android Applications",
                  style: GoogleFonts.anybody(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 16.0, right: 16.0, bottom: 8.0),
                  child: Wrap(
                    children: [
                      for (String text
                          in "Games, playing music, handle network transactions, interacting content etc."
                              .split(" "))
                        Text(
                          "$text ",
                          style: GoogleFonts.anybody(
                            textStyle: TextStyle(
                              color: Colors.blueGrey.shade200,
                              fontSize: 18,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              width: 1,
              height: 30,
              color: Colors.white.withOpacity(.5),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blueGrey.shade100,
                width: .5,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Icon(
                  Icons.desktop_windows_outlined,
                  size: 40,
                  color: Color.fromARGB(255, 17, 255, 160),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Desktop Applications",
                  style: GoogleFonts.anybody(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 16.0, right: 16.0, bottom: 8.0),
                  child: Wrap(
                    children: [
                      for (String text
                          in "Desktop applications for anyone.".split(" "))
                        Text(
                          "$text ",
                          style: GoogleFonts.anybody(
                            textStyle: TextStyle(
                              color: Colors.blueGrey.shade200,
                              fontSize: 18,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              width: 1,
              height: 60,
              color: Colors.white.withOpacity(.5),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              "Education",
              style: GoogleFonts.anybody(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blueGrey.shade100,
                width: .5,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "2019 - 2020",
                    style: GoogleFonts.anybody(
                      textStyle: const TextStyle(
                        color: Color.fromARGB(255, 17, 255, 160),
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Lycée Mixte - Sidi Bouzid",
                    style: GoogleFonts.anybody(
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Bachelor's Degree in Computer Science",
                    style: GoogleFonts.anybody(
                      textStyle: TextStyle(
                        color: Colors.blueGrey.shade200,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              width: 1,
              height: 60,
              color: Colors.white.withOpacity(.5),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              "Languages Skills",
              style: GoogleFonts.anybody(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blueGrey.shade100,
                width: .5,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "English",
                    style: GoogleFonts.anybody(
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  FAProgressBar(
                    currentValue: 80,
                    size: 5,
                    animatedDuration: const Duration(milliseconds: 1500),
                    borderRadius: BorderRadius.circular(0),
                    backgroundColor: Colors.transparent,
                    progressColor: const Color.fromARGB(255, 17, 255, 160),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Arabic",
                    style: GoogleFonts.anybody(
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  FAProgressBar(
                    currentValue: 90,
                    size: 5,
                    animatedDuration: const Duration(milliseconds: 1500),
                    borderRadius: BorderRadius.circular(0),
                    backgroundColor: Colors.transparent,
                    progressColor: const Color.fromARGB(255, 17, 255, 160),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "French",
                    style: GoogleFonts.anybody(
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  FAProgressBar(
                    currentValue: 60,
                    size: 5,
                    animatedDuration: const Duration(milliseconds: 1500),
                    borderRadius: BorderRadius.circular(0),
                    backgroundColor: Colors.transparent,
                    progressColor: const Color.fromARGB(255, 17, 255, 160),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Italian",
                    style: GoogleFonts.anybody(
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  FAProgressBar(
                    currentValue: 60,
                    size: 5,
                    animatedDuration: const Duration(milliseconds: 1500),
                    borderRadius: BorderRadius.circular(0),
                    backgroundColor: Colors.transparent,
                    progressColor: const Color.fromARGB(255, 17, 255, 160),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              width: 1,
              height: 60,
              color: Colors.white.withOpacity(.5),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              "Coding Skills",
              style: GoogleFonts.anybody(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blueGrey.shade100,
                width: .5,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Wrap(
                spacing: 15,
                runSpacing: 15,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        child: const DashedCircularProgressBar.aspectRatio(
                          aspectRatio: 1,
                          backgroundColor: Colors.transparent,
                          foregroundColor: Color.fromARGB(255, 17, 255, 160),
                          progress: 90,
                          maxProgress: 100,
                          startAngle: 0,
                          sweepAngle: 360,
                          foregroundStrokeWidth: 2,
                          backgroundStrokeWidth: 2,
                          animation: true,
                          animationDuration: Duration(milliseconds: 1500),
                          child: Center(
                            child: Icon(
                              Icons.bolt_outlined,
                              color: Color.fromARGB(255, 17, 255, 160),
                              size: 50,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Python",
                        style: GoogleFonts.anybody(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        child: const DashedCircularProgressBar.aspectRatio(
                          aspectRatio: 1,
                          backgroundColor: Colors.transparent,
                          foregroundColor: Color.fromARGB(255, 17, 255, 160),
                          progress: 90,
                          maxProgress: 100,
                          startAngle: 0,
                          sweepAngle: 360,
                          foregroundStrokeWidth: 2,
                          backgroundStrokeWidth: 2,
                          animation: true,
                          animationDuration: Duration(milliseconds: 1500),
                          child: Center(
                            child: Icon(
                              Icons.bolt_outlined,
                              color: Color.fromARGB(255, 17, 255, 160),
                              size: 50,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Dart / Flutter",
                        style: GoogleFonts.anybody(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        child: const DashedCircularProgressBar.aspectRatio(
                          aspectRatio: 1,
                          backgroundColor: Colors.transparent,
                          foregroundColor: Color.fromARGB(255, 17, 255, 160),
                          progress: 90,
                          maxProgress: 100,
                          startAngle: 0,
                          sweepAngle: 360,
                          foregroundStrokeWidth: 2,
                          backgroundStrokeWidth: 2,
                          animation: true,
                          animationDuration: Duration(milliseconds: 1500),
                          child: Center(
                            child: Icon(
                              Icons.bolt_outlined,
                              color: Color.fromARGB(255, 17, 255, 160),
                              size: 50,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "C / C++",
                        style: GoogleFonts.anybody(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        child: const DashedCircularProgressBar.aspectRatio(
                          aspectRatio: 1,
                          backgroundColor: Colors.transparent,
                          foregroundColor: Color.fromARGB(255, 17, 255, 160),
                          progress: 80,
                          maxProgress: 100,
                          startAngle: 0,
                          sweepAngle: 360,
                          foregroundStrokeWidth: 2,
                          backgroundStrokeWidth: 2,
                          animation: true,
                          animationDuration: Duration(milliseconds: 1500),
                          child: Center(
                            child: Icon(
                              Icons.bolt_outlined,
                              color: Color.fromARGB(255, 17, 255, 160),
                              size: 50,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "JS",
                        style: GoogleFonts.anybody(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        child: const DashedCircularProgressBar.aspectRatio(
                          aspectRatio: 1,
                          backgroundColor: Colors.transparent,
                          foregroundColor: Color.fromARGB(255, 17, 255, 160),
                          progress: 70,
                          maxProgress: 100,
                          startAngle: 0,
                          sweepAngle: 360,
                          foregroundStrokeWidth: 2,
                          backgroundStrokeWidth: 2,
                          animation: true,
                          animationDuration: Duration(milliseconds: 1500),
                          child: Center(
                            child: Icon(
                              Icons.bolt_outlined,
                              color: Color.fromARGB(255, 17, 255, 160),
                              size: 50,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "SQL",
                        style: GoogleFonts.anybody(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        child: const DashedCircularProgressBar.aspectRatio(
                          aspectRatio: 1,
                          backgroundColor: Colors.transparent,
                          foregroundColor: Color.fromARGB(255, 17, 255, 160),
                          progress: 80,
                          maxProgress: 100,
                          startAngle: 0,
                          sweepAngle: 360,
                          foregroundStrokeWidth: 2,
                          backgroundStrokeWidth: 2,
                          animation: true,
                          animationDuration: Duration(milliseconds: 1500),
                          child: Center(
                            child: Icon(
                              Icons.bolt_outlined,
                              color: Color.fromARGB(255, 17, 255, 160),
                              size: 50,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Java",
                        style: GoogleFonts.anybody(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        child: const DashedCircularProgressBar.aspectRatio(
                          aspectRatio: 1,
                          backgroundColor: Colors.transparent,
                          foregroundColor: Color.fromARGB(255, 17, 255, 160),
                          progress: 75,
                          maxProgress: 100,
                          startAngle: 0,
                          sweepAngle: 360,
                          foregroundStrokeWidth: 2,
                          backgroundStrokeWidth: 2,
                          animation: true,
                          animationDuration: Duration(milliseconds: 1500),
                          child: Center(
                            child: Icon(
                              Icons.bolt_outlined,
                              color: Color.fromARGB(255, 17, 255, 160),
                              size: 50,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "HTML / CSS",
                        style: GoogleFonts.anybody(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        child: const DashedCircularProgressBar.aspectRatio(
                          aspectRatio: 1,
                          backgroundColor: Colors.transparent,
                          foregroundColor: Color.fromARGB(255, 17, 255, 160),
                          progress: 90,
                          maxProgress: 100,
                          startAngle: 0,
                          sweepAngle: 360,
                          foregroundStrokeWidth: 2,
                          backgroundStrokeWidth: 2,
                          animation: true,
                          animationDuration: Duration(milliseconds: 1500),
                          child: Center(
                            child: Icon(
                              Icons.bolt_outlined,
                              color: Color.fromARGB(255, 17, 255, 160),
                              size: 50,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "PHP",
                        style: GoogleFonts.anybody(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        child: const DashedCircularProgressBar.aspectRatio(
                          aspectRatio: 1,
                          backgroundColor: Colors.transparent,
                          foregroundColor: Color.fromARGB(255, 17, 255, 160),
                          progress: 80,
                          maxProgress: 100,
                          startAngle: 0,
                          sweepAngle: 360,
                          foregroundStrokeWidth: 2,
                          backgroundStrokeWidth: 2,
                          animation: true,
                          animationDuration: Duration(milliseconds: 1500),
                          child: Center(
                            child: Icon(
                              Icons.bolt_outlined,
                              color: Color.fromARGB(255, 17, 255, 160),
                              size: 50,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Qt",
                        style: GoogleFonts.anybody(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              width: 1,
              height: 60,
              color: Colors.white.withOpacity(.5),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              "Knowledge",
              style: GoogleFonts.anybody(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blueGrey.shade100,
                width: .5,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Wrap(
                runSpacing: 15,
                spacing: 15,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 20,
                        color: Color.fromARGB(255, 17, 255, 160),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Website Hosting",
                        style: GoogleFonts.anybody(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 20,
                        color: Color.fromARGB(255, 17, 255, 160),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Android,IOS,Desktop and Web Applications",
                        style: GoogleFonts.anybody(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 20,
                        color: Color.fromARGB(255, 17, 255, 160),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Machine Learning / Deep Learning",
                        style: GoogleFonts.anybody(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              width: 1,
              height: 60,
              color: Colors.white.withOpacity(.5),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              "Interests",
              style: GoogleFonts.anybody(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blueGrey.shade100,
                width: .5,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.music_note,
                    size: 40,
                    color: Color.fromARGB(255, 17, 255, 160),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Music",
                    style: GoogleFonts.anybody(
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Sometimes I Listen To Music",
                    style: GoogleFonts.anybody(
                      textStyle: TextStyle(
                        color: Colors.blueGrey.shade200,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              width: 1,
              height: 30,
              color: Colors.white.withOpacity(.5),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blueGrey.shade100,
                width: .5,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.restaurant_menu_outlined,
                    size: 40,
                    color: Color.fromARGB(255, 17, 255, 160),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Food",
                    style: GoogleFonts.anybody(
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "I Like Food",
                    style: GoogleFonts.anybody(
                      textStyle: TextStyle(
                        color: Colors.blueGrey.shade200,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
