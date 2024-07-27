import 'package:flutter/material.dart';

class btn extends StatefulWidget {
  const btn({super.key});

  @override
  State<btn> createState() => _btnState();
}

class _btnState extends State<btn> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
            onPressed: (){},
             style: ElevatedButton.styleFrom( 
                shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(10), 

                ),
                backgroundColor: Colors.green,
                
                        fixedSize: Size(380, 50),

              ),
             icon: Icon(Icons.edit,color: Colors.white,),
              label: Text('Edit',style: TextStyle(color: Colors.white),),
             
             )
         ;
  }
}