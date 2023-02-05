 
import 'package:flutter/material.dart';

import 'catogies.dart';
import 'costomLisTile.dart';
import 'fav.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Scaffold( 
      backgroundColor: Theme.of(context).primaryColor,
appBar: AppBar(leading: const Icon(Icons.dehaze),
  title: const Text("Chats",style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 24),),
  backgroundColor: Theme.of(context).primaryColor,
  centerTitle: true,
  actions: const [Padding(
    padding: EdgeInsets.only(right:10.0),
    child: Icon(Icons.search),
  )],
  elevation: 0,
),
body: Column(children: [
const Catogries(),
 Expanded(
      child: Container(
     
        decoration: BoxDecoration(color: Theme.of(context).colorScheme.secondary,
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(30),topRight:Radius.circular(30) )
        ),
    
          child: Column(children: [
const FavContacts()
,
Chats()

          ],)))

  
],),
    );
  }
}