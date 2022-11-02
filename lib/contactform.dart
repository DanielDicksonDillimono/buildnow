import 'dart:convert';
//import 'dart:developer';

import 'package:buildnow/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class ContactForm extends StatefulWidget {
  const ContactForm({Key? key}) : super(key: key);

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  bool emailSent = false;

  InputDecoration formFieldDecoration = InputDecoration(
    border: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(10),
    ),
    filled: true,
    fillColor: Color.fromRGBO(240, 240, 240, 1.0),
  );

  BoxDecoration textFieldContainerDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
      BoxShadow(
        color: Colors.white30,
      ),
    ],
  );

  EdgeInsets paddingLeftRight = EdgeInsets.only(left: 20, right: 20);

  String userMessage = "";
  String userName = "";
  String userEmail = "";
  String userNumber = "";
  String errorMessage = "";
  final serviceId = "service_52ght1d";
  final templateId = "template_yfvb94q";
  final userId = "zVly5-Nie-iCDfvwZ";

  Future sendMail() async {
    formkey.currentState!.save();
    if (formkey.currentState!.validate()) {
      try {
        final url = Uri.parse("https://api.emailjs.com/api/v1.0/email/send");
        await http.post(
          url,
          headers: {'Content-Type': 'application/json'},
          body: jsonEncode({
            'service_id': serviceId,
            'template_id': templateId,
            'user_id': userId,
            'template_params': {
              'user_name': userName,
              'user_message': userMessage,
              'user_email': userEmail,
              'user_number': userNumber,
              'user_subject': "BuildNow Potential Client"
            }
          }),
        );
        setState(() {
          emailSent = true;
        });
      } catch (e) {
        setState(() {
          errorMessage =
              "Email could not be sent, try again or call +31684555925";
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width > 700 ? 500 : null,
            padding: paddingLeftRight,
            child: emailSent
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Icon(
                          Icons.check_circle,
                          color: Colors.green,
                        ),
                      ),
                      Text(
                        "Message sent.\nI will reach back to you as soon as possible\n\nDaniel",
                        textAlign: TextAlign.center,
                        style: MediaQuery.of(context).size.width > 700
                            ? bodyTextStyle.copyWith(
                                color: Colors.black,
                              )
                            : mobileBodyTextStyle.copyWith(color: Colors.black),
                      ),
                    ],
                  )
                : Form(
                    key: formkey,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundImage: Image.asset(
                                  "BuildNowAppIcon.png",
                                ).image,
                                radius:
                                    MediaQuery.of(context).size.width * 0.05,
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10),
                                child: Column(
                                  children: [
                                    Text(
                                      "Send a message and I will reach back to you as soon as possible",
                                      textAlign: TextAlign.center,
                                      style: MediaQuery.of(context).size.width >
                                              700
                                          ? bodyTextStyle.copyWith(
                                              color: Colors.black,
                                            )
                                          : mobileBodyTextStyle.copyWith(
                                              color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10),
                                child: Column(
                                  children: [
                                    Text(
                                      errorMessage,
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.montserrat(
                                        color: Color.fromARGB(255, 50, 7, 7),
                                        fontWeight: FontWeight.w300,
                                        fontSize: 20,
                                        //overflow: TextOverflow.visible,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 20, bottom: 10),
                          decoration: textFieldContainerDecoration,
                          child: TextFormField(
                            //  initialValue: _description,
                            //maxLength: 20,
                            decoration: formFieldDecoration.copyWith(
                              prefixIcon: Icon(
                                CupertinoIcons.tag,
                                size: 15,
                              ),
                              label: Text(
                                "Name",
                              ),
                            ),
                            onSaved: (input) => userName = input!,
                            onChanged: (value) => userName = value,
                            validator: (value) =>
                                value!.isEmpty ? "please add a name" : null,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 20, bottom: 10),
                          decoration: textFieldContainerDecoration,
                          child: TextFormField(
                            //  initialValue: _description,
                            //maxLength: 20,
                            decoration: formFieldDecoration.copyWith(
                              prefixIcon: Icon(
                                CupertinoIcons.mail,
                                size: 15,
                              ),
                              label: Text(
                                "Email",
                              ),
                            ),
                            onSaved: (input) => userEmail = input!,
                            onChanged: (value) => userEmail = value,
                            validator: (value) =>
                                value!.isEmpty ? "please add email" : null,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 20, bottom: 10),
                          decoration: textFieldContainerDecoration,
                          child: TextFormField(
                            //  initialValue: _description,
                            // maxLength: 20,
                            decoration: formFieldDecoration.copyWith(
                              prefixIcon: Icon(
                                CupertinoIcons.phone,
                                size: 15,
                              ),
                              label: Text(
                                "Phone number",
                              ),
                            ),
                            onSaved: (input) => userNumber = input!,
                            onChanged: (value) => userNumber = value,
                            validator: (value) =>
                                value!.isEmpty ? "please phone number" : null,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 20, bottom: 10),
                          decoration: textFieldContainerDecoration,
                          child: TextFormField(
                            //  initialValue: _description,
                            maxLines: null,
                            minLines: 6,
                            decoration: formFieldDecoration.copyWith(
                              prefixIcon: Icon(
                                FontAwesomeIcons.plane,
                                size: 15,
                              ),
                              label: Text(
                                "Message",
                              ),
                            ),
                            onSaved: (input) => userMessage = input!,
                            onChanged: (value) => userMessage = value,
                            // validator: (value) => value!.isEmpty
                            //     ? "please add a description"
                            //     : null,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            top: 20,
                          ),
                          child: ElevatedButton.icon(
                            style: actionButtonStyle,
                            onPressed: sendMail,
                            icon: Icon(Icons.send),
                            label: Text(
                              "Send",
                              style: GoogleFonts.montserrat(
                                //fontSize: 50,
                                // fontSize:
                                //     MediaQuery.of(context)
                                //             .size
                                //             .width *
                                //         0.05,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            top: 20,
                          ),
                          child: TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              "Cancel",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
