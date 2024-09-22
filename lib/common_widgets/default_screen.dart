import 'package:flutter/material.dart';

class Image_heading_text_screen extends StatelessWidget {
  const Image_heading_text_screen({super.key,
    required this.image_string, required this.headline, required this.title, required this.body});

  final String image_string,headline,title,body;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [  Image(
          width: 200,
          height: 200,
          image: AssetImage(image_string),
          alignment: Alignment.center,

        ),
          const SizedBox(height: 20,),
          Text(headline,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
          const SizedBox(height: 10,),
          Text(title,style: Theme.of(context).textTheme.bodyMedium,textAlign: TextAlign.center,),
          const SizedBox(height: 10,),
          Text(body,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
          const SizedBox(height: 30,),],
      ),
    );
  }
}
