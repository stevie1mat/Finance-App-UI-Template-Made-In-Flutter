import 'package:dotted_line/dotted_line.dart';
import 'package:finance/profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 10,
              ),
              Center(
                child: Image.asset(
                  'images/logo.png',
                  height: 100,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: Material(
                  elevation: 20.0,
                  borderRadius: BorderRadius.circular(40),
                  shadowColor: Colors.grey[200],
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    obscureText: true,
                    autofocus: false,
                    decoration: InputDecoration(
                        hintStyle: GoogleFonts.alegreya(
                            color: Colors.grey[600],
                            fontSize: 17,
                            fontWeight: FontWeight.normal),
                        icon: Padding(
                          padding: const EdgeInsets.only(left: 26.0, bottom: 5),
                          child: new Icon(Icons.mail_outline_outlined,
                              color: Colors.grey[600], size: 22),
                        ),
                        hintText: 'Enter Your Email',
                        fillColor: Colors.white,
                        filled: true,
                        contentPadding:
                            EdgeInsets.fromLTRB(-30.0, 30.0, 20.0, 20.0),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40.0),
                            borderSide:
                                BorderSide(color: Colors.white, width: 3.0))),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: Material(
                  elevation: 20.0,
                  borderRadius: BorderRadius.circular(40),
                  shadowColor: Colors.grey[200],
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    obscureText: true,
                    autofocus: false,
                    decoration: InputDecoration(
                        hintStyle: GoogleFonts.alegreya(
                            color: Colors.grey[600],
                            fontSize: 17,
                            fontWeight: FontWeight.normal),
                        icon: Padding(
                          padding: const EdgeInsets.only(left: 26.0, bottom: 5),
                          child: new Icon(Icons.lock_open_outlined,
                              color: Colors.grey[600], size: 22),
                        ),
                        hintText: 'Enter Your Password',
                        fillColor: Colors.white,
                        filled: true,
                        contentPadding:
                            EdgeInsets.fromLTRB(-10.0, 30.0, 20.0, 20.0),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40.0),
                            borderSide:
                                BorderSide(color: Colors.white, width: 3.0))),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              Container(
                  decoration: new BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      //background color of box
                      BoxShadow(
                        color: Colors.pink[400],
                        blurRadius: 10.0, // soften the shadow
                        spreadRadius: 1.0, //extend the shadow
                        offset: Offset(
                          0.0, // Move to right 10  horizontally
                          3.0, // Move to bottom 10 Vertically
                        ),
                      )
                    ],
                  ),
                  child: Padding(
                      padding: const EdgeInsets.all(2),
                      child: IconButton(
                        onPressed: () {
                          var route = new MaterialPageRoute(
                            builder: (BuildContext context) => new Profile(),
                          );

                          Navigator.of(context).push(route);
                        },
                        iconSize: 30.0,
                        icon: Icon(
                          Icons.forward_outlined,
                        ),
                        color: Colors.white,
                      ))),
              SizedBox(
                height: MediaQuery.of(context).size.height / 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Register',
                    style: GoogleFonts.lato(
                        color: Colors.grey[600],
                        fontSize: 15,
                        fontWeight: FontWeight.normal),
                  ),
                  Text(
                    'Forgot Password?',
                    style: GoogleFonts.lato(
                        color: Colors.grey[600],
                        fontSize: 15,
                        fontWeight: FontWeight.normal),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 53.0),
                child: DottedLine(
                  direction: Axis.horizontal,
                  lineLength: double.infinity,
                  lineThickness: 1.0,
                  dashLength: 4.0,
                  dashColor: Colors.grey[600],
                  dashRadius: 0.0,
                  dashGapLength: 4.0,
                  dashGapColor: Colors.transparent,
                  dashGapRadius: 0.0,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 16,
              ),
              Image.network(
                'https://cdn.onlinewebfonts.com/svg/img_432272.png',
                height: 60,
              )
            ],
          ),
        ));
  }
}
