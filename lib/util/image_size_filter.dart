import 'dart:ui';

import 'package:flutter/material.dart';

class ImageSizeFilter extends StatelessWidget {
  final Image _image;
  final ImageFilter imageFilter;
  final double? _height, _width, _imageCornerRadius;
  const ImageSizeFilter(this._image, this._height, this._width, this._imageCornerRadius, this.imageFilter, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(_imageCornerRadius!),
      child: SizedBox(
        width: _width,
        height: _height,
        child: ImageFiltered(
          imageFilter: imageFilter,
          child: _image,
        ),
      ),
    );
  }
}
