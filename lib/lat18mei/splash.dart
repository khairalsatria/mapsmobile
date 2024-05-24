import 'package:flutter/material.dart';
import 'package:project3khairal/lat18mei/home.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _Splash();
}

class _Splash extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Home()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white38,
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('gambar/logo_maps.png',
                  fit: BoxFit.contain,
                  height: 150,
                  width: 150,),


                Text('',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,)
                )
              ]
          )
      ),
    );
  }
}
