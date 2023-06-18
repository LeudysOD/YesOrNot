import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/helpers/get_answers.dart';

class ChatProvider extends ChangeNotifier{
  final chatScrollController = ScrollController();
  final getAnswer = GetAnswer();

List<Message> messageList = [
  Message(text: 'Hello babe!', imageUrl: '',fromWho:  FromWho.mine),
  Message(text: 'Are you in home?', imageUrl: '', fromWho: FromWho.mine)
];


Future<void> sendMessage (String message) async{
  final newMessage = Message(text: message,imageUrl: '', fromWho: FromWho.mine);
  messageList.add(newMessage);

  if(message.endsWith('?')){
   messageList.add(await herReply());
  } 
  notifyListeners();
 await moveScrollToBottom();
} 


Future<void> moveScrollToBottom() async{
  await Future.delayed(Duration(microseconds: 500));
chatScrollController.animateTo(
chatScrollController.position.maxScrollExtent,
duration: const Duration(milliseconds: 300),
curve: Curves.easeOut,
);
}

Future<Message> herReply() async {
var answer = await getAnswer.GetYesOrNotAnswer();
return answer;
}
 
}