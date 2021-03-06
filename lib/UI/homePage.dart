import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'Drawerlayout.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController mycontroller = PageController();
  final backgroundColor = Color(0xFF4A4A58);
  final foregroundColor =Color(0xFF943126);
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller:mycontroller,
      pageSnapping: true,
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            // shape: RoundedRectangleBorder(
            //   borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))
            // ),
            backgroundColor: Colors.pink,
            elevation: 0.0,
            title: Text("V-TOP REMASTERED", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
            centerTitle: true,
          ),
          drawer: Drawer(
            elevation: 16.0,
            child: Scaffold(
              appBar: AppBar(
                elevation:0,
                backgroundColor: backgroundColor,
              ),
              body: DrawerLayout()),
          ),
          body: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  ClipPath(
                    clipper: MyCustomClipper(),
                      child: Container(
                      height:250,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey
                            )
                            ],
                        color: Colors.pink,
                      ),
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.only(top:90, right: 80, left: 100),
                          child: Text("On going Events", style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'Weather'),),
                        ),
                      ),
                    ),
                  )
                ],
              ),

              Container(
                // padding: EdgeInsets.all(5),
                height: 150,
                width: 2000,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  // dragStartBehavior: DragStartBehavior.start,
                  // physics: BouncingScrollPhysics(),
                  child: Container(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Padding(padding: EdgeInsets.all(20)),
                        Container(
                          child: GestureDetector(
                            onTap: () => 
                              debugPrint("Nice sexy"),
                            
                            
                            child: Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                
                                image: DecorationImage(
                                  fit:BoxFit.cover,
                                  image: NetworkImage('https://images.pexels.com/photos/2263436/pexels-photo-2263436.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'))
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width:20),
                         Container(
                          child: GestureDetector(
                            onTap: () => 
                              debugPrint("Nice sexy"),
                            
                            
                            child: Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                
                                image: DecorationImage(
                                  fit:BoxFit.cover,
                                  image: NetworkImage('https://images.pexels.com/photos/976866/pexels-photo-976866.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'))
                              ),
                            ),
                          ),
                        ),
                         SizedBox(width:20),
                         Container(
                          child: GestureDetector(
                            onTap: () => 
                              debugPrint("Nice sexy"),
                          
                            
                            child: Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                
                                image: DecorationImage(
                                  fit:BoxFit.cover,
                                  image: NetworkImage('https://images.pexels.com/photos/1190297/pexels-photo-1190297.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'))
                              ),
                            ),
                          ),
                        ),
                         SizedBox(width:20),
                         Container(
                          child: GestureDetector(
                            onTap: () => 
                              debugPrint("Nice sexy"),
                            
                            
                            child: Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                
                                image: DecorationImage(
                                  fit:BoxFit.cover,
                                  image: NetworkImage('https://images.pexels.com/photos/787961/pexels-photo-787961.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'))
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
            ],
          ),
        ),

        Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            child: Text("nice sexy")
          ),
        )
      ],
    );
  }
}

class MyCustomClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0, size.height-100);
    var controllPoint =Offset(0, size.height);
    var endPoint=Offset(size.width/3, size.height);
    path.quadraticBezierTo(controllPoint.dx, controllPoint.dy, endPoint.dx, endPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
   
    return true;
  }


}