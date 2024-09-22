import 'package:ecomflutter/common_widgets/app_bar.dart';
import 'package:flutter/material.dart';

class Profiledetail extends StatelessWidget {
  const Profiledetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        showbackarrow: true,
        title: Text(
          'Profile',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          children: [
            Center(
              child: CircleAvatar(

                child: Image(image: AssetImage('assets/images/man.png')),
              ),
            ),
            SizedBox(height: 20,),
            Text('Abcd@gmail.com'),


          ],
        ),
      ),
    );
  }
}
