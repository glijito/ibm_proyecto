import 'package:flutter/material.dart';
import 'package:ibm_proyecto/theme/app_theme.dart';


class CustomCardImage extends StatelessWidget {

  final String imageUrl;
  final String? title;

  const CustomCardImage({super.key, required this.imageUrl , this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
          elevation: 10,
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
          ),
          shadowColor: AppTheme.primary.withOpacity(0.5),
          child:Column(
            children:  [
               FadeInImage(
                image:NetworkImage(imageUrl),
                placeholder: const AssetImage('assets/jar-loading.gif'),
                width: double.infinity,
                height: 260,
                fit: BoxFit.cover
              ),
              Container(
                alignment: AlignmentDirectional.centerEnd,
                padding: const EdgeInsets.only(right: 20,top: 10,bottom: 10),
                child:  Text(title ?? 'Hermoso Paisaje'),
              )
            ],
          )
      ),
    );
  }
}