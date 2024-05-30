import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  int selectedtabindex = 0; // Track the index of the selected tab

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: height,
          width: width,
          color: Colors.white,
          child: Column(
            children: [
              Container(
                height: height / 5,
                width: width,
                color: Colors.amber,
                child: Padding(
                  padding: EdgeInsets.only(left: width / 20, top: height / 30),
                  child: Text(
                    "App Name",
                    style: TextStyle(fontSize: width / 12.27),
                  ),
                ),
              ),
              Expanded(
                child: DefaultTabController(
                  length: 2,
                  
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        color: Colors.amber,
                        child: TabBar(
                          labelColor: Colors.white,
                          onTap: (index) {
                            setState(() {
                              selectedtabindex = index;
                            });
                          },
                          indicator: BoxDecoration(
                            color: Colors.grey, 
                            
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(selectedtabindex == 0 ? 20 : 0), // Adjust radius based on selected tab index
                              topLeft: Radius.circular(selectedtabindex == 1 ? 20 : 0),
                            ),
                          ),
                          indicatorSize: TabBarIndicatorSize.label, // Match the indicator size to the tab's label
                          indicatorPadding: EdgeInsets.zero, // Remove padding between tab and indicator
                          labelPadding: EdgeInsets.zero, // Remove padding between tabs
                          tabs: [
                            Container(
                              width: double.infinity,
                              alignment: Alignment.center,
                              child: Tab(
                                
                                text: "Student",
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              alignment: Alignment.center,
                              child: Tab(
                                text: "Teacher",
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.grey,
                          child: TabBarView(
                            children: [
                              Center(child: Text("Student View")),
                              Center(child: Text("Teacher View")),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

