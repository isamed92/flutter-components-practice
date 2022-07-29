import 'package:flutter/material.dart';

import 'package:components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Tarjetas')),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const <Widget>[
            // CustomCardType1(),
            // SizedBox(
            //   height: 10,
            // ),
            CustomCardType2(
              imageName: "Un hermoso payaso",
              imageUrl:
                  'https://i0.wp.com/codigoespagueti.com/wp-content/uploads/2021/09/Hunter-%C3%97-Hunter-Este-increible-cosplay-de-Hisoka-te-cortara-el-aliento.png',
            ),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
              imageName: "Un hermoso payaso",
              imageUrl:
                  'https://static.wikia.nocookie.net/hunterxhunter/images/3/38/Hisoka_deja_su_falso_voto.png/revision/latest?cb=20140712010601&path-prefix=es',
            ),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
              imageName: "Un hermoso payaso",
              imageUrl:
                  'https://static.wikia.nocookie.net/hunterxhunter/images/2/25/Hisoka_amenza_a_Killua.png/revision/latest?cb=20140711235435&path-prefix=es',
            ),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
              imageUrl: 'https://pbs.twimg.com/media/EiU18l5WAAAHV52.jpg:large',
            ),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
              imageUrl:
                  'https://gruposaedal.com/wp-content/uploads/2021/12/%C2%BFEl-arte-de-la-cara-de-Hisoka-se-parece-a.jpg',
            )
          ],
        ));
  }
}
