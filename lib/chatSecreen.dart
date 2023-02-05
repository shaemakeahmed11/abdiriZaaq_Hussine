import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/models/message_model.dart';

import 'models/user_model.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({Key? key ,required this.user}) : super(key: key);
final User user;
  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Theme.of(context).primaryColor,

      appBar: AppBar(elevation: 0,
backgroundColor: Theme.of(context).primaryColor,
title: Text(widget.user.name),
centerTitle: true,
actions: const [Icon(Icons.more_horiz)],
        
      ),body: InkWell(onTap: (() => FocusScope.of(context).unfocus()),
        child: Container(
        
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))),
          
          
          child: Expanded(
            child: Column(children: [
               Expanded(
                 child: Container(
                 
               
                 
                  child: ClipRRect(
       borderRadius:BorderRadius.only(topLeft: Radius.circular(30),topRight:Radius.circular(30) ),
            
                    child: ListView.builder(
                         reverse: true,
                                 itemCount: messages.length,
                                
                                 itemBuilder: (BuildContext context,index) {
                    final bool isMe=messages[index].sender.id==currentUser.id;
                         return 
                                 chatMessages(index,isMe) 
                           ;}),
                  ),),
               )
           
      ,
           Row(children: [Icon(Icons.photo,color: Theme.of(context).primaryColor,)
          , SizedBox(width: 10,)
           ,
           Expanded(child: Container(child: TextField(decoration: InputDecoration(hintText: "Write a Message"),)))
           ,Icon(Icons.send,color: Theme.of(context).primaryColor,)],)
        
            ],),
          ),
          ),
      ),);
  }

  Row chatMessages(int index, bool isMe) {
    return Row(
              mainAxisAlignment:  isMe? MainAxisAlignment.end:MainAxisAlignment.start,
              children: [
           
                     Flexible( //legenery xalof text over follow
                       child: Container(
                                           margin: isMe? EdgeInsets.only(left: 10,top: 10,bottom: 10): EdgeInsets.only(right: 10,top: 10,bottom: 10),
                                     padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                                       decoration:  BoxDecoration(
                                          color:isMe? Theme.of(context).colorScheme.secondary:const Color(0xFFFFEFEE),
                                          
                                          borderRadius:  isMe?BorderRadius.only(bottomLeft: Radius.circular(30),topLeft: Radius.circular(30)):const BorderRadius.only(bottomRight: Radius.circular(30),topRight: Radius.circular(30))),
                                       child: 
                                       
                                       
                                       Column(
                                       
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [Text(messages[index].time), const SizedBox(height: 5,), 
                                         Text(messages[index].text,style: const TextStyle(overflow: TextOverflow.visible),),],),
                                     ),
                     ),
             
           isMe?Text('') : messages[index].isLiked? Icon(Icons.favorite,size:30,color: Theme.of(context).primaryColor):Icon(Icons.favorite_border,color: Colors.blueGrey,)
             ]);
  }
}

/*








  Row(
              
              children: [

          Container(
        //  margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(vertical: 15,horizontal: 10),
                decoration: const BoxDecoration(
        color: Colors.amber,
        
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),topRight: Radius.circular(30))),
                child: 
                
                
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text('2:00PM'), SizedBox(height: 5,), Text("Hi how Areaaaa asasa")],),
              ),
              SizedBox(width: 10,),
              Icon(Icons.favorite,size:30,)
             ]) ,
          
*/