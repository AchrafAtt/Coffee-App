import 'package:flutter/material.dart';

class CoffeePrefs extends StatefulWidget {
const CoffeePrefs({ Key? key }) : super(key: key);

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

int _strength = 1;
int _sweetness = 1;

class _CoffeePrefsState extends State<CoffeePrefs> {
void _incrementStrength() {
  setState(() {
    _strength = _strength < 5 ? _strength + 1 : 1;
  });

}

void _incrementSweetness() {
  setState(() {
    _sweetness = _sweetness < 5 ? _sweetness + 1 : 1;
  });
}

  @override
  Widget build(BuildContext context){
    return  Column(
      children: [
        Row(children: [
          Text('Strength:'),
          for (int i = 0; i < _strength; i++)
          Image.asset('assets/img/coffee_bean.png', 
            width: 25, 
            color: Colors.brown[200],
            colorBlendMode: BlendMode.multiply,),
          const Expanded(child: SizedBox(width: 50)),
          FilledButton(
            onPressed: _incrementStrength,
            style:FilledButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.brown,) ,
            
            child: const Text('+')),
          
        ],) , 
        Row(children: [
          Text('Strength:'),
          for (int i = 0; i < _sweetness; i++) 
          Image.asset('assets/img/sugar_cube.png', 
            width: 25, 
            color: Colors.brown[200],
            colorBlendMode: BlendMode.multiply,),
          const Expanded(child: SizedBox(width: 50)),
          TextButton(
            onPressed: _incrementSweetness , 
            style: TextButton.styleFrom(
              foregroundColor: Colors.brown,
             
            ),
            child: const Text('+')),
        ],),
      ],
      
    );  
  }
}