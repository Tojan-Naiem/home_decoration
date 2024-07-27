import 'package:flutter/material.dart';

class ImageItem extends StatefulWidget {
  const ImageItem({super.key});

  @override
  State<ImageItem> createState() => _ImageItemState();
}

class _ImageItemState extends State<ImageItem> {
  
  @override
  Widget build(BuildContext context) {
    return   Center(
      child: Padding(
              padding: const EdgeInsets.only(top: 60,),
              child: AnimatedContainer(
                duration: Duration(seconds: 20),
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
              ),
            ),
    );
  }
}