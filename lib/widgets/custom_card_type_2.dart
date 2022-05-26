import 'package:flutter/material.dart';
import 'package:flutter_course/themes/app_theme.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      // remove children overflowing from container
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 10,
      shadowColor: AppTheme.primaryColor.withOpacity(0.5),
      child: Column(
        children: [
          // Image(
          //     image: NetworkImage(
          //         'https://images.unsplash.com/photo-1648737155328-0c0012cf2f20?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170')),
          const FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(
                'https://images.unsplash.com/photo-1648737155328-0c0012cf2f20?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170'),
            width: double.infinity,
            height: 230,
            // Fit considering its container
            fit: BoxFit.cover,
            fadeInDuration: Duration(
              milliseconds: 300,
            ),
          ),
          Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: const Text('Paisaje')),
        ],
      ),
    );
  }
}
