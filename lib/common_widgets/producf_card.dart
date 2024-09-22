




import 'package:iconsax/iconsax.dart';
import 'package:flutter/material.dart';

class Product_card extends StatelessWidget {
  const Product_card({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: 200,
                height: 220,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius:  const BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))
                ),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: const Image(
                      image: AssetImage('assets/images/s2.jpg'),fit: BoxFit.fill,),
                  ),
                ),


              ),
              Positioned(
                top: 16,
                left: 16,

                child: Container(
                  width: 30,
                  height: 20,
                  decoration: BoxDecoration(
                      color: Colors.yellow.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(child: Text('25%',style: Theme.of(context).textTheme.labelLarge,)),
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.02),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(child: IconButton(onPressed: () {  }, icon: const Icon(Iconsax.heart5,size: 20,),color: Colors.red,)),
                ),
              ),
            ],
          ),
          Container(
            height: 100,
            padding: const EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                borderRadius:  const BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('black leather shoes',style: Theme.of(context).textTheme.labelLarge,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,),
                Row(
                  children: [
                    Text('Nike',style: Theme.of(context).textTheme.labelSmall,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,),
                    const Icon(Iconsax.tick_circle5,color: Colors.blue,size: 10,)
                  ],
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('\$20',style: Theme.of(context).textTheme.headlineMedium,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,),
                    IconButton(onPressed: () {  }, icon: const Icon(Iconsax.message_add_14,),)
                  ],
                ),
              ],
            ),
          ),



        ],
      ),
    );
  }
}
