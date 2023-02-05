 
import 'package:flutter/material.dart';
 import './models/message_model.dart';
class FavContacts extends StatelessWidget {
  const FavContacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Column(children: [Padding(
            padding: const EdgeInsets.symmetric(vertical: 26,horizontal: 18),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:const  [ Text("Favorate Contacts",style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold,letterSpacing: 1),),
       Icon(Icons.more_horiz)],),
          )
       ,
          Container(
            height: 130,
            child: ListView.builder(
        scrollDirection: Axis.horizontal,
padding: EdgeInsets.only(left: 3),
  itemCount: favorites.length,
  itemBuilder: (BuildContext context,index) {
      return Padding(
        padding: const EdgeInsets.only(left:8.0),
        child: Column(children: [
          
          CircleAvatar( radius: 35, backgroundImage:AssetImage(favorites[index].imageUrl),),
          SizedBox(height: 6,),
          Text(favorites[index].name,style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.w800),)],),
      );
       
  }),
          )],);
    
  }
}

//CircleAvatar(backgroundImage:AssetImage(favorites[index].imageUrl),);