import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider.builder(
              itemCount: 4,
              itemBuilder: (context, index, pageViewIndex) {
                return CachedNetworkImage(
                  imageUrl:
                      'https://image.tmdb.org/t/p/w780/iIvQnZyzgx9TkbrOgcXx0p7aLiq.jpg',
                  fit: BoxFit.cover,
                );
              },
              options: CarouselOptions(
                viewportFraction: 1,
                autoPlay: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 1500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
