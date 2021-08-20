import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'model/model.dart';

class CarouselImage extends StatefulWidget {
  late final List<Images> images;
  CarouselImage({required this.images});

  _CarouselImageState createState() => _CarouselImageState();
}

class _CarouselImageState extends State<CarouselImage> {
  late List<Images> images;
  late List<Widget> image;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    images = widget.images;
    // image = Images.map((m) => Image.asset('./images/' + m.poster)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        items: image,
        options: CarouselOptions(
            autoPlay: true, //슬라이드 자동넘김
            height: 150,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            }),
      ),
    );
  }
}
