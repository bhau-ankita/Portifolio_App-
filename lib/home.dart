import 'package:flutter/material.dart';
import 'package:wtf_sliding_sheet/wtf_sliding_sheet.dart';



class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: PopupMenuButton(
          color: Colors.black,
          icon: Icon(Icons.menu, color: Colors.white),
          itemBuilder: (context)=>[
          PopupMenuItem(
            child: TextButton (child: Text('Project', style: TextStyle(color: Colors.white),),
          onPressed: () {
              Navigator.pushNamed(context, 'project');
          },
          ),
            value: 1,
          ),
            PopupMenuItem(child: TextButton (child: Text('About Me', style: TextStyle(color: Colors.white),),
              onPressed: () {
              Navigator.pushNamed(context, 'about');
              },
            ),
            value: 2,)
          ]
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        excludeHeaderSemantics: true,
      ),
        body:SlidingSheet(
        elevation: 8,
        cornerRadius: 50,
        snapSpec: const SnapSpec(
        snap: true,
        snappings: [0.38, 0.7, 1.0],
        positioning: SnapPositioning.relativeToAvailableSpace,
    ),
    body: Container(
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only( bottom: 60),
            child: ShaderMask(
              shaderCallback: (rect){
                return LinearGradient(
                  begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black, Colors.transparent]).createShader(
                    Rect.fromLTRB(0, 0, rect.width, rect.bottom));
              },
                blendMode: BlendMode.dstIn,
                child: Image.asset('assets/image/110.jpg',height: 400,width: 400,
                  fit: BoxFit.contain,),
                ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height*0.4),

            child: Column(
              children: [
                SizedBox(height: 90,),
                Text('Ankita Bhau ',style: TextStyle(fontSize: 40, color: Colors.white),),
                SizedBox(height: 10,),
                Text('Mobile Devloper',style: TextStyle(fontSize: 30,color: Colors.white),)
              ],
            ),
          ),
        ],
      ),
    ),
    
    builder: (context, state) {
      return Container(
        margin: EdgeInsets.only(left: 20,right: 20, top: 30),
        height: 500,
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                myArchiev('3','Projects'),
                myArchiev('5','Clients'),
                myArchiev('7','Messages'),
              ],
            ),
            SizedBox(height: 20,),
            Text('Specialized In',
              style: TextStyle(fontSize: 29,fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    card(Icons.android,'Android'),
                    card(Icons.flutter_dash,'Flutter'),
                    card(Icons.ios_share,'Ios'),
                  ],
                ),
              ],
            ),
          ],
        )
        ,
      );
    }
    )
    );
  }

  Container card(icon,tech) {
    return Container(
                    width: 105,
                    height: 115,
                    child: Card(
                      margin: EdgeInsets.all(0),
                      color: Color(0xff252525),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(icon, color: Colors.white,
                            ),
                            SizedBox(height: 10,),
                            Text(tech, style: TextStyle(
                              color: Colors.white,fontSize: 16
                            ),)

                          ],
                        ),
                      ),
                    ),
                  );
  }

  Row myArchiev(num,type) {
    return Row(
                children: [
                  Text(num, style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                  Container(
                    margin: EdgeInsets.only(top: 10
                    ),
                      child: Text(type,style: TextStyle(fontSize: 20),))
                ],
              );
  }
}
