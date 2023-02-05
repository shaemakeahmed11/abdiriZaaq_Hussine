import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Catogries extends StatefulWidget {
  const Catogries({Key? key}) : super(key: key);

  @override
  State<Catogries> createState() => _CatogriesState();
}

class _CatogriesState extends State<Catogries> {
  int selectedIndex=0;
    List  data=['Messages','Online','Groups','Requests'];
  @override
  Widget build(BuildContext context) {
  
    return Container(
      color: Theme.of(context).primaryColor,
  
height: 90,
child: ListView.builder(
        scrollDirection: Axis.horizontal,
  padding: const EdgeInsets.all(8),
  itemCount: data.length,
  itemBuilder: (BuildContext context,index) {
      return GestureDetector(
        onTap: ()=>{
        setState((() {
            selectedIndex=index;
            print("dddddd");
            print(selectedIndex);
        }))
        
        
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14,vertical: 20),
          child: Text(data[index],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:  index==selectedIndex?Colors.white:Colors.white60,letterSpacing: 1.2),),
        ),
      );
       
  },
    ));
  }
}