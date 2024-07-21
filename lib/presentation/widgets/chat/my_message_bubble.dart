import 'package:flutter/material.dart';
 
class MyMessageBubble extends StatelessWidget {
  const MyMessageBubble({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: colors.primary),
      child: const Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: Text('La revolucion industrial y sus consecuencias han sido un desastre para la raza humana',style: TextStyle(color: Colors.white),)),
    ),
    const SizedBox(height: 10,)],);
  }
}