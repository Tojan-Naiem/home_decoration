import 'package:flutter/material.dart';
import 'package:home_decoration/Home/widget/productCard.dart';

class ItemCard extends StatefulWidget {
   ItemCard(this.title,this.image,this.rate,this.type,this.price,{super.key});
  String title;
  String image;
  String price;
  String rate;
  String type;

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector( 
      onTap: (){
        Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProductCard(widget.title,widget.image,widget.rate,widget.type,widget.price, )),
                    );
      },
      child: Padding ( 
        padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
        child: Container( 
          height: 200,
          width: 120,
          decoration: BoxDecoration(
              color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Stack( 
           clipBehavior: Clip.none, 
            children: [
              Positioned(
                top: -60, 
                left: 5, 
                right: 30,
                child:Image(image: AssetImage(widget.image),fit: BoxFit.cover,)
                 ),

                 Positioned(
                top: 10,
                left: 117,
                child: Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow, size: 20),
                    SizedBox(width: 5),
                    Text(
                      widget.rate.toString(),
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            Positioned(
                bottom: 70,
                left: 15,
                child: Text(
                  widget.title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              Positioned(
                bottom: 55,
                left: 15,
                child: Text(
                  widget.type,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                left: 15,
                child: Text(
                  widget.price,
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                right: 15,
                child: IconButton(
                  icon: Icon(Icons.favorite_border),
                  onPressed: () {
                    // Add to favorites logic
                  },
                ),
              ),
          
            ],
          ),
        ),
      ),
    );
  }
}