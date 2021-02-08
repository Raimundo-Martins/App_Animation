import 'package:animations_flutter/screens/home/widgets/list_data.dart';
import 'package:flutter/material.dart';

class AnimatedListView extends StatelessWidget {
  final Animation<EdgeInsets> listSlidePosition;

  AnimatedListView({@required this.listSlidePosition});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ListData(
          image: AssetImage('images/perfil.jpg'),
          title: 'Android',
          subtitle: 'Aula de Android',
          margin: listSlidePosition.value * 2,
        ),
        ListData(
          image: AssetImage('images/perfil.jpg'),
          title: 'IOS',
          subtitle: 'Aula de IOS',
          margin: listSlidePosition.value * 1,
        ),
        ListData(
          image: AssetImage('images/perfil.jpg'),
          title: 'Flutter',
          subtitle: 'Aula de Flutter',
          margin: listSlidePosition.value * 0,
        ),
      ],
    );
  }
}
