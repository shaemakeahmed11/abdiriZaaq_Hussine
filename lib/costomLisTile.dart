import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/chatSecreen.dart';
import 'package:flutter_application_1/models/message_model.dart';

class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      
      child: Container(
    decoration: const BoxDecoration(color: Colors.white,
 borderRadius:BorderRadius.only(topLeft: Radius.circular(30),topRight:Radius.circular(30) )),
       
        child: ClipRRect(
 borderRadius:BorderRadius.only(topLeft: Radius.circular(30),topRight:Radius.circular(30) ),
          
          child: ListView.builder(
              
            padding: EdgeInsets.only(left: 0),
              itemCount: chats.length,
              itemBuilder: (BuildContext context,index) {
            return InkWell(
              onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (_)=>ChatsScreen(user: chats[index].sender))),
              child: Container(
            
                margin: EdgeInsets.only(top: 10,bottom:5,right: 20),
                      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                    decoration:   BoxDecoration( color:  chats[index].unread?Color(0xFFFFEFEE):Colors.white,
              
              borderRadius:BorderRadius.only(bottomRight: Radius.circular(30),topRight:Radius.circular(30) )),
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                CircleAvatar( radius: 35,backgroundImage:AssetImage( chats[index].sender.imageUrl),)
                ,const SizedBox(width: 10)
                ,Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text(chats[index].sender.name,style: TextStyle(color: Colors.grey ,fontSize: 15,fontWeight: FontWeight.bold)),
                  
                  const SizedBox(height: 6,),
                  Container(
                      
                      width: MediaQuery.of(context).size.width*0.50,
                      child: Text(chats[index].text,style: TextStyle(color: Colors.blueGrey ,overflow: TextOverflow.ellipsis,fontSize: 15),))],)
                
                    ],),
                  Column(
                  
                    children: [Text(chats[index].time,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                    
                    
                   chats[index].unread? Container(
                    height: 25,
                    width: 45,
                      decoration:  BoxDecoration(color: Theme.of(context).primaryColor,
             borderRadius:BorderRadius.all(Radius.circular(30))),
                      child: Center(child: Text("NEW",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 12),))):Text('')],)
                  
                  
                  ],
                ),
              ),
            );
              }),
        ),
      ),
    );
    
     
  }
}