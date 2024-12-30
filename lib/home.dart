import 'package:flutter/material.dart';
import 'package:vortex_app/coffee_prefs.dart';

class Home extends StatelessWidget {
    const Home({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(appBar:AppBar(
        title: const Text("My Coffee Shop", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.brown[400],
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            
            padding: EdgeInsets.all(10),
            color: Colors.brown[100],
            child: Text("How I like my coffee ... "),
          ),
          Container(
            padding: EdgeInsets.all(10),
            color: Colors.brown[200],
            child: const CoffeePrefs(),
          ),
          Expanded(
            child: Image.asset('assets/img/coffee_bg.jpg', 
            fit: BoxFit.fitWidth,
            alignment: Alignment.bottomCenter,
                    ),
          ),
        ],
      ),
    );
      
    
 }
}