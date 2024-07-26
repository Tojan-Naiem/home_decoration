import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 

      appBar: AppBar(

        title: Text('Profile',style: TextStyle(color: Colors.black),),
        actions: [
          Padding(padding: const EdgeInsets.only(right: 10),
          child :Icon(Icons.settings)
          )
        ],
      ),
      body: Column( 
        children: [ 
          Padding(
            padding: const EdgeInsets.only(top: 60,left: 100),
            child: Container( 
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage('images/man.jpg'),fit: BoxFit.cover)
              ),
              child: 
             Stack( 
                    clipBehavior: Clip.none, 
            
              children: [ 
                   Positioned(
                  top: 170, 
                  left: 130, 
              
                  child:GestureDetector(
                    onTap: (){},
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration( 
                        shape: BoxShape.circle,
                        color:  Color.fromARGB(255, 97, 194, 100)
                      ),
                      child: Icon(Icons.image,color: Colors.black,)
                      ),
                  )
                   ),
            
              ],
             ),
            ),
          )
        ],
       



      ),



    );
  }
}