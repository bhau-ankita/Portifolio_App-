import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyProject extends StatefulWidget {
  const MyProject({super.key});

  @override
  State<MyProject> createState() => _MyProjectState();
}

class _MyProjectState extends State<MyProject> {
  myPro(lang,title,desc,num,){
    return Container(
      height: 220,
      width: MediaQuery.of(context).size.width*0.9,

      child: Card(
        color: Color(0xff262628),
        child: Container(
          margin: EdgeInsets.only(right: 20,left: 20,top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(lang, style: TextStyle(fontSize: 20, color: Colors.white),),
              SizedBox(height: 15,),
              Text(title, style: TextStyle(fontSize: 30, color: Colors.white,
                  fontWeight: FontWeight.bold),),
              SizedBox(height: 3,),
              Text(desc, style: TextStyle(fontSize: 15, color: Colors.white70,
              ),),
              Row(

                children: [
                  Icon(Icons.star, color: Colors.white70,size: 20,),
                  SizedBox(width: 4,),
                  Text(num, style: TextStyle(color: Colors.white),),
                  SizedBox(width: 240,),
                  Expanded(child:  IconButton(onPressed: () {}, icon: Icon(FontAwesomeIcons.github,color: Colors.white70,)))
                ],
              )
            ],

          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Projects',style: TextStyle(fontSize: 30, color: Colors.white),),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             myPro('Flutter', 'ChatUi', 'A ui of chat ', '9'),
              myPro('Dart', 'Listview', 'Listview in dart ', '8'),
              myPro('Flutter', 'Calculator', 'Basic Calculator  ', '10'),
              myPro('Python', 'AiVoiceAssistance', 'voice assistance  ', '9'),
            ],
          ),
        ),
      ),
    );
  }
}

