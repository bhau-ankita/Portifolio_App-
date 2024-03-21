

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyAbout extends StatefulWidget {
  const MyAbout({super.key});

  @override
  State<MyAbout> createState() => _MyAboutState();
}

class _MyAboutState extends State<MyAbout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              child: ShaderMask(
                shaderCallback: (rect){
                  return LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black,Colors.transparent]
                  ).createShader(Rect.fromLTRB(rect.bottom, rect.top, rect.width, rect.height));
                },
                blendMode: BlendMode.dstIn,
                child: Image.asset('assets/image/110.jpg',height: 500, width: 500, fit: BoxFit.contain),

              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height*0.65),
              child: Column(
                children: [
                  Text('Hello I Am', style: TextStyle(fontSize: 30, color: Colors.white),),
                  SizedBox(height: 10,),
                  Text('Ankita Bhau',style: TextStyle(fontSize: 40, color: Colors.white),),
                  SizedBox(height: 2,),
                  Text('Mobile Devloper',style: TextStyle(fontSize: 20,color: Colors.white),),
                  SizedBox(height: 10,),
                  SizedBox(
                    width: 120,
                    child: TextButton(onPressed: () {}, child: Text('Hire Me'),
                    style: TextButton.styleFrom(backgroundColor: Colors.white, primary:Colors.black ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(
                        FontAwesomeIcons.instagram, color: Colors.white,
                      )),
                      IconButton(onPressed: () {}, icon: Icon(
                        FontAwesomeIcons.github, color: Colors.white,
                      )),
                      IconButton(onPressed: () {
                      }, icon: Icon(
                        FontAwesomeIcons.linkedin, color: Colors.white,
                      )),
                      IconButton(onPressed: () {}, icon: Icon(
                        FontAwesomeIcons.facebook, color: Colors.white,
                      )),
                      IconButton(onPressed: () {}, icon: Icon(
                        FontAwesomeIcons.twitter, color: Colors.white,
                      ))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
