import 'package:flutter/material.dart';
import 'package:prev_next/src/clipper_shape.dart';

import '../util/custom_thumb_shape.dart';
import '../util/image_size.dart';

class PrevNext extends StatefulWidget {
  final Image prevImage;
  final Image nextImage;
  final double? imageHeight;
  final double? imageWidth;
  final double imageCornerRadius;
  final Color thumbColor;
  final double thumbRadius;
  final Color? overlayColor;
  final bool isVertical;


  const PrevNext({
    Key? key,
    required this.prevImage,
    required this.nextImage,
    this.imageHeight,
    this.imageWidth,
    this.imageCornerRadius = 8.0,
    this.thumbColor = Colors.white,
    this.thumbRadius = 16.0,
    this.overlayColor,
    this.isVertical = false
  }) : super(key: key);

  @override
  _PrevNextState createState() => _PrevNextState();
}

class _PrevNextState extends State<PrevNext> {
  double _clipFactor = 0.5;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Padding(
          padding: widget.isVertical ? const EdgeInsets.symmetric(vertical: 24.0) : const EdgeInsets.symmetric(horizontal: 24.0),
          child: ImageSize(
            widget.nextImage,
            widget.imageHeight,
            widget.imageWidth,
            widget.imageCornerRadius
          ),
        ),
        Padding(
          padding: widget.isVertical ? const EdgeInsets.symmetric(vertical: 24.0) : const EdgeInsets.symmetric(horizontal: 24.0),
          child: ClipPath(
            clipper: widget.isVertical ? ClipperShapeVertical(_clipFactor) : ClipperShape(_clipFactor),
            child: ImageSize(
                widget.prevImage,
                widget.imageHeight,
                widget.imageWidth,
                widget.imageCornerRadius
            ),
          )
        ),
        Positioned.fill(
          child: SliderTheme(
            data: SliderThemeData(
                trackHeight: 0.0,
                overlayColor: widget.overlayColor,
                thumbShape: CustomThumbShape(
                  widget.thumbRadius,
                  widget.thumbColor,
                )
            ),
            child: widget.isVertical ?
              RotatedBox(
                quarterTurns: 1,
                child: Slider(
                  value: _clipFactor,
                  onChanged: (double factor) {
                    setState(() {
                      _clipFactor = factor;
                    });
                  },
                ),
              ) :
              Slider(
                value: _clipFactor,
                onChanged: (double factor) {
                  setState(() {
                    _clipFactor = factor;
                  });
                },
              ),
          )
        )
      ],
    );
  }
}
















