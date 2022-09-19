import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final String imageUrl;

  const ImageCard({super.key, required this.imageUrl});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Container(
              color: Colors.grey[300],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset(
                    imageUrl,
                    fit: BoxFit.contain,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: SizedBox(
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'More',
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
