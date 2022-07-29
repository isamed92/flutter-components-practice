import 'package:components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageUrl;
  final String? imageName;

  const CustomCardType2({Key? key, required this.imageUrl, this.imageName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 10,
      shadowColor: AppTheme.primary.withOpacity(0.6),
      child: Column(children: [
        FadeInImage(
          placeholder: const AssetImage('assets/jar-loading.gif'),
          image: NetworkImage(imageUrl),
          width: double.infinity,
          height: 260,
          fadeInDuration: const Duration(milliseconds: 300),
          fit: BoxFit.cover,
        ),
        if (imageName != null)
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: Text(imageName!),
          )
      ]),
    );
  }
}
