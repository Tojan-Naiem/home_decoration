import 'package:flutter/material.dart';

class Bar extends StatefulWidget {
  const Bar({super.key});

  @override
  State<Bar> createState() => _BarState();
}

class _BarState extends State<Bar> {
  @override
  Widget build(BuildContext context) {
    return  Row( 
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.menu_sharp,color: Colors.black,)),
                Row( 
                  children: [ 
                    IconButton(onPressed: (){}, icon: Icon(Icons.notifications_active_outlined,color: Colors.black,)),
                    IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.black,)),
                    Padding(padding: EdgeInsets.only(right: 20),
                    child:  Container( 
                      height: 30,
                      width: 30,
                      
                      decoration: BoxDecoration( 
                        shape: BoxShape.circle,
                        image: DecorationImage(image: AssetImage('images/man.jpg'),fit: BoxFit.cover)
                      ),
                    )
                    
                    )
                   
                  ],
                )
               ],
            );
  }
}