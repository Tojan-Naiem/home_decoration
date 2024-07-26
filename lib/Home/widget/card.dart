import 'package:flutter/material.dart';

class CardHome extends StatefulWidget {
   CardHome(this.title,this.image,{super.key});
   String title;
   String image;
    

  @override
  State<CardHome> createState() => _CardHomeState();
}

class _CardHomeState extends State<CardHome> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child:Padding(padding: const EdgeInsets.all(10),
      child:   Container( 
        width: 250,
        height: 180,
        
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage( widget.image!),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.5), 
                  BlendMode.srcATop,)
            )
        ),
        child: Center( 
          child: Text(widget.title!,style: TextStyle(color: Colors.white,fontSize: 17),),
        ),
      ),
      
      )
     
    );
  }
}