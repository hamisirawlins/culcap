import 'package:culcap/constants.dart';
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
            borderRadius: BorderRadius.circular(20),
            child: Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset(
                    imageUrl,
                    fit: BoxFit.contain,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(
                            left: 30, right: 15, top: 8, bottom: 8),
                        child: Icon(
                          Icons.favorite_border,
                          color: kSecondaryColor,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: SizedBox(
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'More',
                              style: TextStyle(
                                color: kSecondaryColor,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
