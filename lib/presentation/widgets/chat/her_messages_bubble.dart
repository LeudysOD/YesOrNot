import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HerMessagesBubble extends StatelessWidget {
  const HerMessagesBubble({super.key});

   @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        color: colors.secondary,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Text('Hello!, how are u?',
          style: TextStyle(
          color: Colors.black
          ),
          ),
        ),
      ),
      SizedBox(height: 5)
      //Todo: image
      ],
    );
  }
}