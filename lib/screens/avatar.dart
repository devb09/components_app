import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stan Lee'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundColor: Colors.indigo[900],
              child: const Text('SL'),
            ),
          )
        ],
      ),
      // body: const Center(
      //   child: CircleAvatar(
      //     maxRadius: 110,
      //     backgroundImage: NetworkImage('https://ih1.redbubble.net/image.2163760423.3617/flat,750x,075,f-pad,750x1000,f8f8f8.u1.jpg' ),
      //   ),
      // ),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(125.0),
          child: const FadeInImage(
            fit: BoxFit.fill,
            width: 250,
            height: 250,
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(
                'https://images.fineartamerica.com/images/artworkimages/mediumlarge/2/cute-edgar-allan-poe-valentina-hramov.jpg'),
          ),
        ),
      ),
    );
  }
}
