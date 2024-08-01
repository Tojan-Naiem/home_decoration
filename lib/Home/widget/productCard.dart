import 'package:flutter/material.dart';
import 'package:home_decoration/Home/models/item.dart';
import 'package:home_decoration/Home/widget/myCart.dart';

class ProductCard extends StatefulWidget {
    ProductCard(this.title,this.image,this.rate,this.type,this.price,{super.key});
  String title;
  String image;
  String price;
  String rate;
  String type;


  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    double? h=size.height/2.4;
    double? w=size.width;
    return Scaffold(
                  extendBodyBehindAppBar: true,

      appBar: AppBar( 
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notification_add))
        ],
        
      ),
      backgroundColor: Colors.white,
       floatingActionButton: FloatingActionButton(
          onPressed: () {},
          focusColor: Color.fromARGB(255, 97, 194, 100),
          shape: CircleBorder(),
          backgroundColor: Color.fromARGB(255, 97, 194, 100),
          child: Icon(
            Icons.add_shopping_cart,
            color: Colors.white,
          )),
      body: SingleChildScrollView(
        child: Stack(
                          clipBehavior: Clip.none, 

          children: [ 
            Column(
                      crossAxisAlignment:  CrossAxisAlignment.start,
              children:[ 
                Stack( 
                                            clipBehavior: Clip.none, 

                  children: [ 

  Container( 
                height: h,
                width: w,
                decoration: BoxDecoration( 
                  color: Color.fromARGB(255, 243, 240, 240),
                  
                ),
              ),
               Positioned(
              top: 120,
                  left: -210,
                  right: 0,
                 child: Container(
                        height: 300,
                        width: 200,
                        decoration: BoxDecoration( 
                          color: Colors.transparent,
                          image: DecorationImage(
                            image: AssetImage(
                          widget.image,),fit: BoxFit.contain,
                          
                          ),
                             
                        
                       
                       )
                    ),
               ),
                    
                   Positioned(
                  top: 120,
                  left: w / 1.3,
                   child: Container(
                        width: w-w/1.7,
                        child: Text(
                          widget.type,
                          maxLines: 2,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.w500
                            ),),
                      ),
                 ),           Positioned(
                    top: 150,
                    left: w/1.7,
                    
                    child: Container(
                      width: w-w/1.7,
                    
                      child: Text(
                        widget.title,
                        maxLines: 2,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w500
                          ),),
                    )
                     ),
        
                     Positioned(
                    top: 250,
                    left: w/1.3,
                    
                    child: Container(
                      width: w-w/1.7,
                       
                      child: Text(
                        'Price',
                        maxLines: 2,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                          ),),
                    )
                     ),
        
                     Positioned(
                    top: 280,
                    left: w/1.3,
                    
                    child: Container(
                      width: w-w/1.7,  
                      child: Text(
                        widget.price,
                        maxLines: 2,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromARGB(255, 97, 194, 100),
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                          ),),
                    )
                     ),
                     


                  ],
                ),
              
       
          //              Positioned(
          //   top: 360,
          //   right: 50,
          //   child:GestureDetector( 
              
          //     child: Icon(Icons.favorite_border_outlined),
          //     onTap: (){
          //       print('Hi');
          //     },
          //   )
          //    ),

          const SizedBox(height: 50,),
                      
           Container(
              
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                
              
               
                  Row(
                    children: [
                        for(int i=0;i<5;i++)
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container( 
                          width: 25,
                          height: 25,
        
                          child: Icon(Icons.star,color: Colors.amber,),
                        ),
                      ),
                       Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(widget.rate,style: TextStyle(color: Colors.amber,fontSize: 19,fontWeight: FontWeight.w500),),
                  )
                    ],
                  ),
                  Row( 
                    children: [ 
                      Padding(padding: const EdgeInsets.only(right: 10),
                      child: Text('124 reviews',style: TextStyle(color: Colors.grey),),
                      ),
                      Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 15,)
                    ],
                  )
                 
                ],
              ),
            ),
            const SizedBox(height: 20,),
          
          Container( 
            margin: const EdgeInsets.only(left: 15),
            width: 300,
            height: 50,
             
            child: Text( 
              'Simple & Minilimaziation',
              style: TextStyle( 
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
                      const SizedBox(height: 20,),

          Container( 
             
            margin: const EdgeInsets.only(left: 15),
            height: 200,
            width: 350,
            child: Text( 
              'Crafted with the highest quality materials, this item offers unparalleled performance and style. Perfect for those who demand the best, it combines elegance with functionality to meet all your needs.',
              style: TextStyle( 
                color: Colors.grey,
                fontSize: 15,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          const SizedBox(height: 150,)
        
        ]),
        
             Positioned(
            bottom:0,
            right: 0,
            left: 0,
 
            child:Padding(
              padding: const EdgeInsets.only(left: 10,right: 100,bottom: 15),
              child: ElevatedButton( 
                 child:
                Text('Add to cart'.toUpperCase(),style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                style: ElevatedButton.styleFrom(
                  primary:Color.fromARGB(255, 97, 194, 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  ) ,
                  fixedSize: Size(w/2, 50),
                ),
                onPressed: (){
                  print('Hi');
                  // setState(() {
                  //      Item.addItem.add(new Item(
                  //   widget.title, widget.image, widget.rate, widget.type, widget.price));
                  // });
               
                  showModalBottomSheet(
                    backgroundColor: Colors.white,
                    barrierColor: Colors.black.withOpacity(0.4),
                    
                    context: context,
                    isScrollControlled: true,
                     builder: (context){
                      return Container( 
                        height: 400,
                        width: w,
                        decoration: BoxDecoration( 
                          borderRadius: BorderRadius.only( 
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15)
                          )
                        ),
                        child: SingleChildScrollView(
                          child: Column( 
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [ 
                              Padding(
                                padding: const EdgeInsets.only(top: 20,left: 20),
                                child: Text('My Cart',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
                                ),
                                Container( 
                                  margin: const EdgeInsets.only(top: 20,left: 20),
                                  height: 500,
                                  width: 350,
                                  child: ListView.builder(
                                    itemCount: Item.addItem.length,
                                    scrollDirection: Axis.vertical,
                                    itemBuilder: ((context, index) {
                                      return MyCart( 
                                        item: Item.addItem[index],
                                      );
                                    })
                                    ),
                                )
                                   
                            ],
                          ),
                        )
                      );
              
                    }
                    );
                
                },
               
                
              
                       
              ),
            )
             ),
              
          
          
         
          ],
        
        ),
      ),
    );
  }
}