import 'package:flutter/material.dart';
import 'package:party_ui_app/animations/fadeanimation.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static final id = "home_page";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isLogin = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/party.jpg"), fit: BoxFit.cover),
        ),
        child: Container(
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Colors.black.withOpacity(.6),
                Colors.black.withOpacity(.5),
                Colors.black.withOpacity(.4),
                Colors.black.withOpacity(.3),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 100,
              ),
              FadeAnimation(
                  1.2,
                  Text(
                    "Find the best parties near you",
                    style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: 30,
              ),
              FadeAnimation(
                1.4,
                Text(
                  "Let us find you a tutorial for your interest",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 395,
              ),

              isLogin ?
              FadeAnimation(
                2,
                Container(
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.yellow.shade900,
                  ),
                  child: Center(
                    child: Text(
                      "Start",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ) :
                  FadeAnimation(2.4, Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.red,
                          ),
                          child: Center(
                            child: Text(
                              "Google",
                              style: TextStyle(
                                fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          height: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(45),
                            color: Colors.blue,
                          ),
                          child: Center(
                            child: Text(
                              "Meta",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),),

              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
