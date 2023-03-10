import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children:  [
          const  ListTile(
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary,),
            title: Text('Soy un titulo'),
            subtitle: Text('lorem ipsum'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: (){},
                  child: const Text('cancel'),
                ),
                TextButton(
                    onPressed: (){},
                    child: const Text('ok')
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
