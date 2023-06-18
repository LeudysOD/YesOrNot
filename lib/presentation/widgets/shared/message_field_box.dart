import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';

class MessageFieldBox extends StatelessWidget {
    final ValueChanged<String> onValue;
    final chatProvider = ChatProvider();
   MessageFieldBox({super.key, required this.onValue});

  @override
  Widget build(BuildContext context) {
    final focusNode = FocusNode();
    final messageController = TextEditingController();
    final colors = Theme.of(context).colorScheme;
    final outlineInputBorder = OutlineInputBorder(
          borderSide: BorderSide(color: colors.primary),
        borderRadius: BorderRadius.circular(20));

    final inputDecoration = InputDecoration(
      hintText: 'End your message with a: ?',
        enabledBorder : outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true,
        suffixIcon: IconButton(
        icon: Icon(Icons.send_outlined),
        onPressed: () {
          final messageValue = messageController.value.text;
          onValue(messageValue);
          messageController.clear();
           focusNode.requestFocus();
          },
        ),
      );




    
    return TextFormField(
      focusNode: focusNode,
    controller: messageController,
    decoration: inputDecoration,
    onFieldSubmitted: (value) {
    messageController.clear();
   onValue(value);
    focusNode.requestFocus();
    },

    onTapOutside: (event) =>  focusNode.unfocus(),
    );
  }
}