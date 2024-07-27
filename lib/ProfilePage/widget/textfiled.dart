import 'package:flutter/material.dart';

class txt extends StatefulWidget {
  const txt({super.key});

  @override
  State<txt> createState() => _txtState();
}

class _txtState extends State<txt> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  label: Text(
                    'Name',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              TextFormField(
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  label: Text(
                    'Email',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              TextFormField(
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  label: Text(
                    'Phone Number',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                keyboardType: TextInputType.phone,
              ),
              TextFormField(
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  label: Text(
                    'Password',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
