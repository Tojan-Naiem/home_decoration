import 'package:flutter/material.dart';
import 'package:home_decoration/Home/models/item.dart';

class MyCart extends StatefulWidget {
   MyCart({this.item,this.quantity,this.index,super.key});
  Item? item;
  int? quantity;
  int? index;

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {

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
                widget.item!.image!                
                ),
                fit: BoxFit.cover
                )
            ),
          ),
          Column( 
            children: [ 
              const SizedBox(height: 23,),
              Text(widget.item!.title!,style:const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
              Row( 
                children: [ 
                  GestureDetector( 
                    onTap: (){
                      setState(() {
                        if(widget.quantity!=1){
                        widget.quantity=widget.quantity!-1;
                          ShoppingCart.addItem.entries.elementAt(widget.index!).value!=widget.quantity;
                         }
                      });
                    },
                    child:const Text('-',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20),)
                  ),
                  const SizedBox(width: 10,),
                  Text(widget.quantity.toString(),style:const TextStyle(color: Colors.black),),
                                     const SizedBox(width: 10,),

                   GestureDetector( 
                    onTap: (){
                      setState(() {
                          widget.quantity=widget.quantity!+1;
                 ShoppingCart.addItem.entries.elementAt(widget.index!).value!=widget.quantity;


                      });
                    },
                    child:const Text('+',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 15),)
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