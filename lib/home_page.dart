import 'package:flutter/material.dart';

import 'FadeAnimation.dart';

class HomePage extends StatefulWidget {
  static final String id = "home_page";
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _islogin = true;
  @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/99.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(

              colors: [
                Colors.black.withOpacity(.2),
                Colors.black.withOpacity(.5),
                Colors.black.withOpacity(.4),
                Colors.black.withOpacity(.6),


              ]
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,

            children: [
              SizedBox(height: 150 ,),
              FadeAnimation(1,Text('Find the Best Parties near you',style: TextStyle(color: Colors.yellow,fontSize: 40,fontWeight: FontWeight.bold),),),


              SizedBox(height: 20,),
              FadeAnimation(1.2,Text('Find the Best Parties near you',style: TextStyle(color: Colors.lightGreenAccent,fontSize: 30,fontWeight: FontWeight.w100),),),
              SizedBox(height: 400,),


              _islogin ?
                  FadeAnimation(1.4,Container(
                    height: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.orange
                    ),


                    child: Center(
                      child: Text('Start',style: TextStyle(color: Colors.white,fontSize: 18),),
                    ),
                  ),):


           FadeAnimation(1.5,         Row(

             children: [
               Container(
                 padding: EdgeInsets.symmetric(horizontal: 55),
                 height: 55,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(50),
                   color: Colors.red,
                 ),
                 child: Center(
                   child: Text('Google',style: TextStyle(color: Colors.white,fontSize: 18),),
                 ),
               ),
               SizedBox(width: 10,),
               Container(
                 padding: EdgeInsets.symmetric(horizontal: 45),
                 height: 55,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(50),
                   color: Colors.blue,
                 ),
                 child: Center(
                   child: Text('Facebook',style: TextStyle(color: Colors.white,fontSize: 18),),
                 ),
               ),

             ],
           ),),

            ],
          ),
        ),
      ),

    );
  }
}
