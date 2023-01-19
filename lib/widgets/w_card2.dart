import 'package:flutter/material.dart';

class CustomCard2 extends StatelessWidget {
  final String imageUrl;
  final String? description;

  const CustomCard2({
    Key? key,
    required this.imageUrl,
    this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      //cortar contenido
      clipBehavior: Clip.antiAlias,
      //bordes
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      elevation: 5,
      shadowColor: Colors.teal[200]?.withOpacity(0.5),
      child: Column(
        children: [
          FadeInImage(
            // Image(
            placeholder: const AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(imageUrl),
            width: double.infinity,
            height: 260.0,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          if (description != null)
            Container(
                alignment: AlignmentDirectional.centerEnd,
                padding:
                    const EdgeInsets.only(top: 10.0, bottom: 10.0, right: 20.0),
                // child: Text(description ?? 'Image Kawaii'))
                child: Text(description!))
        ],
      ),
    );
  }
}
