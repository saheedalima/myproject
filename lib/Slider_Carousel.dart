import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Slider_Carousel extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CarouselSlider(
            items: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/Icons/img.png"),
                  fit: BoxFit.cover,
                )
              )),
              Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/Icons/img.png"),
                        fit: BoxFit.cover,
                      )
                  )),
              Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/Icons/img.png"),
                        fit: BoxFit.cover,
                      )
                  )),Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/Icons/img.png"),
                        fit: BoxFit.cover,
                      )
                  )),Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/Icons/img.png"),
                        fit: BoxFit.cover,
                      )
                  )),Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/Icons/img.png"),
                        fit: BoxFit.cover,
                      )
                  )),Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/Icons/img.png"),
                        fit: BoxFit.cover,
                      )
                  ))
            ],
            options: CarouselOptions(
              autoPlay: true,
              viewportFraction: 1,  //ith koduthal bakki imagesinte kurach bhagam koodi kaanikkum,1 koduta at a time oru imge
              height: 600,
              enableInfiniteScroll: true, //image theernnalum infintate aayi scrol avum
              enlargeCenterPage: true,   // center page enlarge aayi nikkkan
              autoPlayCurve: Curves.bounceIn,  //image varunna animation
              autoPlayAnimationDuration: const Duration(seconds: 1),
            )),
      );
  }
}
