import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class HerMessagesBubble extends StatelessWidget {
final Message message;
  const HerMessagesBubble({super.key, required this.message});

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
          child: Text(message.text,
          style: TextStyle(
          color: Colors.black
          ),
          ),
        ),
      ),
      SizedBox(height: 5),
      _imageBubble(image: message.imageUrl),
      SizedBox(height: 10)
      //Todo: image
      ],
    );
  }
}

class _imageBubble extends StatelessWidget {
   final String image;

  const _imageBubble({super.key, required this.image});

  @override
  Widget build(BuildContext context) {

final size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(image,
      width: size.width * 0.7,
      height: 150,
      fit: BoxFit.cover,
      loadingBuilder: (context, child, loadingProgress) {
        if(loadingProgress == null) return child;

        return Container(
          width: size.width * 0.7,
          height: 150,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: const Text('Mi amor esta enviando una imagen'),
        );
      },
      ),
      );
      
  }
}