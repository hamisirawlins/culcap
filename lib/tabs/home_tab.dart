import 'package:culcap/widgets/image_card.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ImageCard(
          imageUrl: 'assets/imgs/pexels-aslhndogan-12571192.jpg',
        ),
        ImageCard(
          imageUrl: 'assets/imgs/pexels-dominika-mazur-13234871.jpg',
        ),
        ImageCard(
          imageUrl: 'assets/imgs/pexels-ivan-samkov-5676740.jpg',
        ),
        ImageCard(
          imageUrl: 'assets/imgs/pexels-pixabay-267669.jpg',
        ),
        ImageCard(
          imageUrl: 'assets/imgs/pexels-tim-mossholder-13187759.jpg',
        ),
      ],
    );
  }
}
