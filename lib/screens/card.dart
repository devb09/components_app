import 'package:flutter/material.dart';
import 'package:components_app/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCard1(),
            SizedBox(
              height: 10,
            ),
            CustomCard2(
              imageUrl:
                  'https://i.pinimg.com/originals/73/0f/d7/730fd784cdb7ec663bed196ca0d52a8c.jpg',
              description: 'Shiro',
            ),
            SizedBox(
              height: 10,
            ),
            CustomCard2(
              imageUrl:
                  'https://www.vhv.rs/dpng/d/299-2990164_shiro-no-game-no-life-chibi-png-download.png',
            ),
            SizedBox(
              height: 10,
            ),
            CustomCard2(
              imageUrl:
                  'https://w7.pngwing.com/pngs/435/30/png-transparent-anime-chibi-no-game-no-life-mangaka-digital-art-anime-purple-cg-artwork-violet.png',
              description: 'Jibril',
            ),
            SizedBox(
              height: 10,
            ),
            CustomCard2(
              imageUrl:
                  'https://www.pngfind.com/pngs/m/446-4462834_nogamenolife-shiro-con-izuna-no-game-no-life.png',
            ),
          ],
        ));
  }
}
