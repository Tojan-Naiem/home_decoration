import 'package:flutter/material.dart';
import 'package:home_decoration/Home/models/item.dart';

class MyCart extends StatelessWidget {
   MyCart({this.item,super.key});
  Item? item;

  @override
  Widget build(BuildContext context) {
    return Container( 
      height: 150,
      width: 300,
      decoration: BoxDecoration( 
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(255, 224, 224, 224)
      ),
      child: Row( 
        children: [ 
          Container( 
            height: 100,
            width: 100,
            decoration: BoxDecoration( 
              image: DecorationImage(
                image: AssetImage(
                item!.image!                
                ),
                fit: BoxFit.cover
                )
            ),
          ),
          Column( 
            children: [ 
              const SizedBox(height: 23,),
              Text(item!.title!,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
              Row( 
                children: [ 
                  GestureDetector( 
                    onTap: (){
                      setS
                    },
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}