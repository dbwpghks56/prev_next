import 'package:flutter/material.dart';
import 'package:prev_next/src/clipper_shape.dart';

class PrevNext extends StatefulWidget {
  final Widget prevImage;
  final Widget nextImage;
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
          child: _ImageSize(
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
            child: _ImageSize(
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
                thumbShape: _CustomThumbShape(
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
                      this._clipFactor = factor;
                    });
                  },
                ),
              ) :
              Slider(
                value: _clipFactor,
                onChanged: (double factor) {
                  setState(() {
                    this._clipFactor = factor;
                  });
                },
              ),
          )
        )
      ],
    );
  }
}

class _ImageSize extends StatelessWidget {
  final Widget _image;
  final double? _height, _width, _imageCornerRadius;
  const _ImageSize(this._image, this._height, this._width, this._imageCornerRadius, {Key? key}) : super(key: key);

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

class _CustomThumbShape extends SliderComponentShape {
  final double _thumbRadius;
  final Color _thumbColor;

  _CustomThumbShape(this._thumbRadius, this._thumbColor);

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(_thumbRadius);
  }

  @override
  void paint(
      PaintingContext context,
      Offset center,
      {required Animation<double> activationAnimation,
        required Animation<double> enableAnimation,
        required bool isDiscrete,
        required TextPainter labelPainter,
        required RenderBox parentBox,
        required SliderThemeData sliderTheme,
        required TextDirection textDirection,
        required double value,
        required double textScaleFactor,
        required Size sizeWithOverflow
      }) {
    final Canvas canvas = context.canvas;

    final Paint paint = Paint()
    ..isAntiAlias = true
    ..strokeWidth = parentBox.size.height
    ..color = _thumbColor
    ..style = PaintingStyle.fill;

    final Paint paintStroke = Paint()
    ..isAntiAlias = true
    ..strokeWidth = 4.0
    ..color = _thumbColor
    ..style = PaintingStyle.stroke;

    canvas.drawCircle(center, _thumbRadius, paintStroke);
    canvas.drawCircle(center, _thumbRadius - 6, paint);

    canvas.drawRect(
        Rect.fromCenter(
            center: center,
            width: 4.0,
            height: parentBox.size.height
        ),
        paint );
  }


}













