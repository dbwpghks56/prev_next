import 'package:flutter/material.dart';

class ImageSize extends StatelessWidget {
  final Image _image;
  final double? _height, _width, _imageCornerRadius;
  const ImageSize(this._image, this._height, this._width, this._imageCornerRadius, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(_imageCornerRadius!),
      child: SizedBox(
        width: _width,
        height: _height,
        child: _image,
      ),
    );
  }
}
