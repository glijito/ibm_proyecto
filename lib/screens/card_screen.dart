import 'package:flutter/material.dart';
import 'package:ibm_proyecto/Widgets/Widgets.dart';

class CardScreen extends StatelessWidget {

  const CardScreen({super.key});

  final options = const[
    'https://img.freepik.com/free-vector/nature-scene-with-river-hills-forest-mountain-landscape-flat-cartoon-style-illustration_1150-37326.jpg'
    ,'https://img.freepik.com/free-vector/peaceful-hill-forest-tree-mountains-rock-beautiful-landscape-outdoors-adventure-green-silhouette-illustration_1150-39395.jpg?w=2000'
    ,'https://img.freepik.com/premium-vector/mountain-green-field-alpine-landscape-nature-with-wooden-houses_194708-1779.jpg'
    ,'https://cdn.pixabay.com/photo/2012/08/27/14/19/mountains-55067__340.png'
    ,'https://llandscapes-10674.kxcdn.com/wp-content/uploads/2019/07/lighting.jpg'
    ,'https://images.unsplash.com/photo-1444090542259-0af8fa96557e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8N3x8fGVufDB8fHx8&w=1000&q=80'
    ,'https://images.unsplash.com/photo-1612441804231-77a36b284856?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8bW91bnRhaW4lMjBsYW5kc2NhcGV8ZW58MHx8MHx8&w=1000&q=80'
    ,'https://petapixel.com/assets/uploads/2022/08/fdfs11-800x533.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('card widget'),
      ),
      body: ListView.separated(
        itemBuilder: (context,index)=>CustomCardImage(imageUrl: options[index]),
        separatorBuilder: (context,data)=> const SizedBox(),
        itemCount: options.length,
        )
      );
    }
}
