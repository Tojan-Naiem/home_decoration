import 'package:flutter/material.dart';

class DrawerC extends StatefulWidget {
  const DrawerC({super.key});

  @override
  State<DrawerC> createState() => _DrawerCState();
}

class _DrawerCState extends State<DrawerC> {
  @override
  Widget build(BuildContext context) {
    return  Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 97, 194, 100),
              ),
              child: Column( 
                children: [ 
                  Container( 
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration( 
                      shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage('images/man.jpg',),fit: BoxFit.cover)
                    )
                  ),
                  const SizedBox(height: 20,),
                  Text('Ahmad Michaiel',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                ],
              )
            ),
            ListTile( 
              title: Text('Home Page'),
              onTap: (){},
              leading: Icon(Icons.home),
            ),
            ListTile(
              title: Text('Your Profile'),
              onTap: () {
              },
              leading: Icon(Icons.person),
              
            ),
             ListTile(
              title: Text('Favorite'),
              onTap: () {
              },
              leading: Icon(Icons.favorite),
              
            ),
             ListTile(
              title: Text('Shopping List'),
              onTap: () {
              },
              leading: Icon(Icons.shopping_bag),
            ),
            ListTile(
              title: Text('Setting'),
              onTap: () {
              },
              leading: Icon(Icons.settings),
            ),
           
          ],
        ),
      );
  }
}