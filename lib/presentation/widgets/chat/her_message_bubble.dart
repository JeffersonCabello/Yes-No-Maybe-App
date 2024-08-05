import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class HerMessageBubble extends StatelessWidget {
  final Message message;
  const HerMessageBubble({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: colors.secondary),
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                message.text,
                style: const TextStyle(color: Colors.white),
              )),
        ),
        const SizedBox(
          height: 10,
        ),
        _ImageBuble(
          imageURL: message.imageUrl!,
        ),
        const SizedBox(
          height: 5,
        ),
      ],
    );
  }
}

class _ImageBuble extends StatelessWidget {
  final String imageURL;
  const _ImageBuble({required this.imageURL});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        imageURL,
        width: size.width * 0.7,
        height: 150,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return Container(
            width: size.width * 0.70,
            height: 150,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: const Text("Ella Freya esta enviando una imagen..."),
          );
        },
      ),
    );
  }
}
