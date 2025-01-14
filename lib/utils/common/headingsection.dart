import 'package:flutter/material.dart';

class HeadingSection extends StatelessWidget {
  const HeadingSection({
    super.key,
    this.onPressed,
    this.buttontitle = 'View all',
    required this.title,
    this.showActionButton = true,
  });
  final bool showActionButton;
  final String title, buttontitle;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(),
    child: Column(
          children: [
            Text('Popular Categories',style: Theme.of(context).textTheme.labelLarge!.apply(color: Colors.black),maxLines: 1,overflow: TextOverflow.ellipsis,),
            if(showActionButton) TextButton(onPressed: onPressed, child: Text(buttontitle))
          ],
    ),
    );
  }
}


