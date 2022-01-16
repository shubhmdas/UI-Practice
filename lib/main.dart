import 'package:flutter/material.dart';
import 'package:ui_practice/Animation/fade_animation_down.dart';
import 'package:ui_practice/Animation/fade_animation_up.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 330,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/background.png'),
                    fit: BoxFit.fill)),
            child: Stack(
              children: [
                Positioned(
                    left: 30,
                    width: 90,
                    height: 200,
                    child: FadeAnimationDown(
                        1.5,
                        Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/light-1.png'))),
                        ))),
                Positioned(
                    left: 160,
                    width: 90,
                    height: 160,
                    child: FadeAnimationDown(
                        1.5,
                        Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/light-2.png'))),
                        ))),
                Positioned(
                    top: 40,
                    right: 40,
                    width: 90,
                    height: 160,
                    child: FadeAnimationDown(
                        1.5,
                        Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/clock.png'))),
                        ))),
                Positioned(
                    child: FadeAnimationDown(
                        1.5,
                        Container(
                          margin: const EdgeInsets.only(top: 120),
                          child: const Center(
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'SourceSerifPro'
                              ),
                            ),
                          ),
                        )))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                FadeAnimationUp(
                    1.5,
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromRGBO(143, 148, 251, .2),
                              blurRadius: 20.0,
                              offset: Offset(0, 10),
                            )
                          ]),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                            decoration: BoxDecoration(
                              border: Border(
                                  bottom:
                                      BorderSide(color: Colors.grey.shade100)),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Email',
                                  hintStyle: TextStyle(
                                      color: Colors.grey[350],
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Password',
                                  hintStyle: TextStyle(
                                      color: Colors.grey[350],
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ],
                      ),
                    )),
                const SizedBox(
                  height: 25.0,
                ),
                InkWell(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('Signed in successfully!')));
                  },
                  child: FadeAnimationUp(
                      1.5,
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            gradient: const LinearGradient(colors: [
                              Color.fromRGBO(143, 148, 251, 1),
                              Color.fromRGBO(143, 148, 251, .6),
                            ])),
                        child: const Center(
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 19.0,
                            ),
                          ),
                        ),
                      )),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                FadeAnimationUp(
                    1.5,
                    const Text(
                      'Forgot Password?',
                      style: TextStyle(
                          color: Color.fromRGBO(143, 148, 251, 1),
                          fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
