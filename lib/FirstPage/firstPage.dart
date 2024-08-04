import 'package:flutter/material.dart';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:home_decoration/Home/homePage.dart';
import 'package:home_decoration/SignUpPage/signUpPage.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  double opacity1=0;
  double opacity2=0;
  double opacity3=0;
  int x=1;
   void initState(){
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_){
    setState(() {
       timer();
    });
   });
    
  }
  timer(){

    Future.delayed(const Duration(seconds: 1), () {
      print('Hi After 1 ');
      setState(() {
               opacity1=1;

      });
});

Future.delayed(const Duration(seconds:3), () {
   setState(() {
               opacity2=1;

      });             print('Hi After 2 ');

});
Future.delayed(const Duration(seconds: 5), () {
   setState(() {
               opacity3=1;

      });             print('Hi After 3 ');

});

  }
  

  @override
  Widget build(BuildContext context) {





    Size size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container( 
        height:size.height ,
        width: size.height,
        decoration: BoxDecoration( 
          image: DecorationImage(
            image: AssetImage('images/home.jpg'),
          fit: BoxFit.cover,
          colorFilter:   ColorFilter.mode(
                  Colors.black.withOpacity(0.7), 
                  BlendMode.srcATop,
                ),
            )
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ 
             SizedBox(height: size.height/1.65,),
             Container(padding: const EdgeInsets.only(left: 30),
             width: 350,
             child: AnimatedOpacity(
                    opacity:opacity1,
                    duration:Duration(seconds: 5),
                    child:Text(
                    'Make every corner of your home special',
                    style: TextStyle(
                      color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold
                      ),

                      

                    )
                      )


           
                
             
             
             

             
             ),
              AnimatedOpacity(
                opacity: opacity2,
                duration: Duration(seconds: 3),
                child: Padding(padding: const EdgeInsets.only(left: 30,top: 10),
                        
                             child:Text('Start your home makeover journey with us today',style: TextStyle(color: Colors.white,fontSize: 12,),)
                          
                             
                             ),
              ),
              AnimatedOpacity(
                opacity: opacity3,
                duration: Duration(seconds: 3),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30,top: 25),
                child: ElevatedButton(
                  onPressed: (){
                     Navigator.push(context,MaterialPageRoute(builder: (context)=>
                SignUpPage()));
                  }, 
                   style: ElevatedButton.styleFrom(
                   primary: Colors.white, 
                     shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(10), 
                ),
                        fixedSize: Size(350, 50),
                      ),
                  child: Text('Get Started',style: TextStyle(color: Colors.brown,fontSize: 15,fontWeight: FontWeight.normal),)),
                        
                
                             
                             ),
              ),
          ],
        ),
      ),
    );
  }
}