import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController nameController = TextEditingController(text: "");
  TextEditingController emailController = TextEditingController(text: "");
  TextEditingController messageController = TextEditingController(text: "");
  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    messageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

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
                "Contacts",
                style: GoogleFonts.anybody(
                  textStyle: TextStyle(
                    color: Colors.blueGrey.shade100,
                    fontSize: 50,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              "About Me",
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Icon(
                    Icons.phone,
                    size: 40,
                    color: Color.fromARGB(255, 17, 255, 160),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Phone",
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
                    "(+216) 28 056 362",
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
          Center(
            child: Container(
              width: 1,
              height: 30,
              color: Colors.white.withOpacity(.5),
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
                  const SizedBox(
                    height: 20,
                  ),
                  const Icon(
                    Icons.alternate_email_outlined,
                    size: 40,
                    color: Color.fromARGB(255, 17, 255, 160),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "E-mail",
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
                    "hafedhgunichi@gmail.com",
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Icon(
                    Icons.flag_circle_outlined,
                    size: 40,
                    color: Color.fromARGB(255, 17, 255, 160),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Address",
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
                    "9110 Jelma Sidi-Bouzid",
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Icon(
                    Icons.attach_money_outlined,
                    size: 40,
                    color: Color.fromARGB(255, 17, 255, 160),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Freelance Available",
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
                    "I'm available for freelance hiring",
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
          Center(
            child: Container(
              width: 1,
              height: 80,
              color: Colors.white.withOpacity(.5),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              "Contact Form",
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
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      cursorColor: const Color.fromARGB(255, 17, 255, 160),
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.allow(RegExp(r"\w"))
                      ],
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "name is required";
                        } else if (!value.contains(RegExp(r"^[a-zA-Z]\w+$"))) {
                          return "this is not a valid name";
                        }
                        return null;
                      },
                      style: GoogleFonts.actor(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                      controller: nameController,
                      decoration: InputDecoration(
                        labelText: "Name",
                        labelStyle: GoogleFonts.actor(
                          color: Colors.blueGrey.shade200,
                          fontSize: 20,
                        ),
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 17, 255, 160),
                            width: 2,
                          ),
                        ),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 17, 255, 160),
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      cursorColor: const Color.fromARGB(255, 17, 255, 160),
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.allow(RegExp(r"[\w\@\.]"))
                      ],
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "email is required";
                        } else if (!value.contains(RegExp(
                            r"^[a-zA-Z]\w+\@[a-zA-Z]+\.[a-zA-Z]{2,3}$"))) {
                          return "this is not a valid email";
                        }
                        return null;
                      },
                      style: GoogleFonts.actor(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                      controller: emailController,
                      decoration: InputDecoration(
                        labelText: "E-mail",
                        labelStyle: GoogleFonts.actor(
                          color: Colors.blueGrey.shade200,
                          fontSize: 20,
                        ),
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 17, 255, 160),
                            width: 2,
                          ),
                        ),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 17, 255, 160),
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      cursorColor: const Color.fromARGB(255, 17, 255, 160),
                      maxLength: 1000,
                      maxLines: 7,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "message is required";
                        } else if (value.contains(RegExp(r"^\s+$"))) {
                          return "message can't contain only whitespaces.";
                        }
                        return null;
                      },
                      style: GoogleFonts.actor(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                      controller: messageController,
                      decoration: InputDecoration(
                        labelText: "Message",
                        labelStyle: GoogleFonts.actor(
                          color: Colors.blueGrey.shade200,
                          fontSize: 20,
                        ),
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 17, 255, 160),
                            width: 2,
                          ),
                        ),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 17, 255, 160),
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    AnimatedButton(
                      text: "Send Message",
                      selectedBackgroundColor:
                          const Color.fromARGB(255, 17, 255, 160),
                      selectedTextColor: Colors.black,
                      onPress: () async {
                        if (formKey.currentState!.validate()) {
                          Fluttertoast.showToast(
                            msg: "Mail Sent",
                            fontSize: 30,
                            webBgColor: "rgb(17, 255, 160)",
                            webPosition: "center",
                            textColor: Colors.black,
                            toastLength: Toast.LENGTH_LONG,
                            timeInSecForIosWeb: 3,
                            webShowClose: true,
                          );
                          nameController.clear();
                          emailController.clear();
                          messageController.clear();
                        }
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
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
