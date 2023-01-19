import 'package:flutter/material.dart';
import 'package:components_app/themes/theme.dart';

class CustomCard1 extends StatelessWidget {
  const CustomCard1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            ListTile(
              leading: const Icon(
                Icons.photo_album,
                color: AppTheme.primaryColor,
              ),
              title: const Text('soy titulo'),
              subtitle: Column(
                children: const [
                  SizedBox(height: 10.0,),
                  Text(
                      'Magna ex reprehenderit aliqua eiusmod officia cillum exercitation exercitation ipsum labore non.'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text('Cancel'),
                  ),
                  TextButton(onPressed: () {}, child: const Text('ok'))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
