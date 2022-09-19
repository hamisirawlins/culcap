import 'package:culcap/widgets/image_card.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(padding: const EdgeInsets.all(8.0), child: ImageCard()),
        Padding(padding: const EdgeInsets.all(8.0), child: ImageCard()),
        Padding(padding: const EdgeInsets.all(8.0), child: ImageCard()),
        Padding(padding: const EdgeInsets.all(8.0), child: ImageCard()),
        Padding(padding: const EdgeInsets.all(8.0), child: ImageCard()),
        Padding(padding: const EdgeInsets.all(8.0), child: ImageCard()),
        Padding(padding: const EdgeInsets.all(8.0), child: ImageCard()),
        Padding(padding: const EdgeInsets.all(8.0), child: ImageCard()),
        Padding(padding: const EdgeInsets.all(8.0), child: ImageCard()),
        Padding(padding: const EdgeInsets.all(8.0), child: ImageCard()),
        Padding(padding: const EdgeInsets.all(8.0), child: ImageCard()),
        Padding(padding: const EdgeInsets.all(8.0), child: ImageCard())
      ],
    );
  }
}
