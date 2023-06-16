import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_messages_bubble.dart';

import '../../widgets/chat/my_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding
        (
          padding:EdgeInsets.all(4.0),
          child: CircleAvatar(),
         ),
        title: Text("Baby!!"),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) => (index % 2==0 ? const HerMessagesBubble(): const MyMessageBubble()))
               ),
           const Text("Mundo")
          ],
        ),
      ),
    );
  }
}