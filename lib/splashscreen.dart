import 'package:elearning/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    print(width);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(color: Colors.white),
        child: Padding(
          padding: EdgeInsets.only(top: height / 5, bottom: height / 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: height / 10,
                width: double.infinity,
                color: Colors.yellow,
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: width / 10.61, right: width / 10.61),
                child: Container(
                  height: height / 24.55,
                  width: double.infinity,
                  color: Colors.transparent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: double.infinity,
                        height: height / 79.81,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(30)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: width / 14.02, right: width / 14.02),
                        child: Container(
                          width: double.infinity,
                          height: height / 79.81,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(30)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                color: Colors.transparent,
                child: Padding(
                  padding:
                      EdgeInsets.only(left: width / 11.9, right: width / 11.9),
                  child: Padding(
                    padding:
                        EdgeInsets.only(top: height / 60, bottom: height / 60),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        button(
                          name: 'Sign In',
                        ),
                        Text(
                          "or",
                          style: TextStyle(
                              fontSize: width / 21.81,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        button(name: "Sign Up")
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
