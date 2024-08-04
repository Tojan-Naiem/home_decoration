import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isTap=true;
  bool isTap2=false;
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
     body: Container( 
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image:  AssetImage('images/home.jpg'),
          fit: BoxFit.cover,
           colorFilter:   ColorFilter.mode(
                  Colors.black.withOpacity(0.7), 
                  BlendMode.srcATop,
                ),
        
        )
      ),
      child: Column( 
        children: [ 

         SizedBox(height: size.height/1.7,),
         Center( 
          child: Column(
            children: [
              Text('Sign Up',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
              const SizedBox(height: 20,),
              Container(
                decoration:  BoxDecoration( 
                  gradient: LinearGradient( 
                    colors:isTap? [Color.fromARGB(255, 18, 39, 19),Color.fromARGB(255, 97, 194, 100),Color.fromARGB(255, 130, 252, 134),]:[Color.fromARGB(255, 18, 39, 19)],
                    begin: Alignment.topLeft,
                    end: Alignment.centerRight
                  ),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom( 
                   shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide( 
                      color: isTap?Colors.transparent:Colors.white
                    )
                    ),
                    fixedSize: Size(300, 50),
                   primary: Colors.transparent, 
                    shadowColor: Colors.transparent,
                    
                  ),
                  onPressed: (){
                    isTap2=!isTap2;
                      isTap=!isTap;
                  },
                   child: Text('Continue wit Facebook',style: TextStyle(color: Colors.white),)
                   ),
              ),
                const SizedBox(height: 15,),
              Container(
                decoration:  BoxDecoration( 
                  gradient: LinearGradient( 
                    colors:isTap2?[Color.fromARGB(255, 18, 39, 19),Color.fromARGB(255, 97, 194, 100),Color.fromARGB(255, 130, 252, 134),]:[Color.fromARGB(255, 18, 39, 19)],
                    begin: Alignment.topLeft,
                    end: Alignment.centerRight
                  ),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom( 
                   shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                     side: BorderSide( 
                      color: isTap2?Colors.transparent:Colors.white,
                      width: 2

                    )
                    ),
                    fixedSize: Size(300, 50),
                   primary: Colors.transparent, 
                    shadowColor: Colors.transparent
                  ),
                  onPressed: (){
                    setState(() {
                      isTap2=!isTap2;
                      isTap=!isTap;
                    });
                  },
                   child: Text('Sign Up with Email',style: TextStyle(color: Colors.white),)
                   ),
              ),
            ],
          ),
         )

        ],
      ),
     ),
      
    );
  }
}