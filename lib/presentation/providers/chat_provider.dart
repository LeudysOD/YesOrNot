import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier{

List<Message> messageList = [
  Message('Hello babe!', '', FromWho.mine),
  Message('Are you in home?', '', FromWho.mine)
];


void sendMessage (String message){
  final newMessage = Message(message,'', FromWho.mine);
  messageList.add(newMessage);

  notifyListeners();
//Todo: Implement logic to send Message
} 
 
}