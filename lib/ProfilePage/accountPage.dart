import 'package:flutter/material.dart';
import 'package:home_decoration/ProfilePage/widget/btn.dart';
import 'package:home_decoration/ProfilePage/widget/image.dart';
import 'package:home_decoration/ProfilePage/widget/textfiled.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold( 

      appBar: _appBar(),
      body: Column( 
        children: [ 
          ImageItem(),
          const SizedBox(height: 30,),
          txt(),
          const SizedBox(height: 20,),
          btn()
          
              
              
         
                
        ],
       



      ),



    );
  }

  AppBar _appBar(){
    return AppBar(

        title: Text('Profile',style: TextStyle(color: Colors.black),),
        actions: [
          Padding(padding: const EdgeInsets.only(right: 10),
          child :Icon(Icons.settings)
          )
        ],
      );
  }
}