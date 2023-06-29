# 😎 Prev_next
두 이미지를 슬라이드를 이용해 차지하는 범위를 바꿔줌으로서 차이점을 보다 더 쉽게 볼 수 있게 해줍니다. <br>
하나의 이미지에 필터를 걸어서 필터의 유무에 대해 보다 쉽게 볼 수 있게 해줍니다.


# 🎨 Result Image
![image](https://github.com/dbwpghks56/prev_next/assets/43091440/6176066e-ed7a-4420-960c-b0708e1193ca)
![image](https://github.com/dbwpghks56/prev_next/assets/43091440/2407c921-b28f-44aa-920a-80e74b50a53c)


# 💻 Installation 
``` pubspec.yaml ``` 에 해당 라인을 추가하세요.

```dart
dependencies:
  prev_next: <latest version>
```
# 🧤 Usage 
```dart
import 'package:prev_next/prev_next.dart';
```
```dart 
   PrevNext(
     beforeImage: Image.network('Image Url'),
     afterImage: Image.network('Image Url'),
   ),
```
```dart
  PrevNextFilter(
     imageFilter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
     originImage: Image.network('Image Url'),
   ),
```
# 🧵 Customization and Attributes 
All customizable attributes for Prev_Next Widget
## PrevNext
|Attribute Name|	Example Value|	Description|
|--------------------| ---------------------|-----------------|
|prevImage (Widget)|Image.asset('assets/before.jpg')|	전의 이미지 설정|
|nextImage (Widget)|	Image.asset('assets/after.jpg')|	후의 이미지 설정|
|isVertical (bool)|	false	|세로, 가로 방향 설정|
|imageHeight (double)	|100.0	|두 이미지의 높이 설정|
|imageWidth (double)	|200.0	|두 이미지의 넓이 설정|
|imageCornerRadius (double)	|16.0	|이미지의 모서리 설정|
|thumbColor (Color)	|Colors.red	|슬라이더 색상 설정|
|thumbRadius (double)|	16.0	|슬라이더 중앙의 동그라미 설정|
|overlayColor (Color)|	Colors.yellow|	슬라이더 클릭 색상 설정|
## PrevNextFilter
|Attribute Name|	Example Value|	Description|
|--------------------| ---------------------|-----------------|
|originImage (Widget)|Image.asset('assets/before.jpg')|	기본 이미지 설정|
|imageFilter(Widget)|	Image.asset('assets/after.jpg')|	기본 이미지에 적용할 필터 설정|
|isVertical (bool)|	false	|세로, 가로 방향 설정|
|imageHeight (double)	|100.0	|두 이미지의 높이 설정|
|imageWidth (double)	|200.0	|두 이미지의 넓이 설정|
|imageCornerRadius (double)	|16.0	|이미지의 모서리 설정|
|thumbColor (Color)	|Colors.red	|슬라이더 색상 설정|
|thumbRadius (double)|	16.0	|슬라이더 중앙의 동그라미 설정|
|overlayColor (Color)|	Colors.yellow|	슬라이더 클릭 색상 설정|

# 👍 How to Contribute 
레포지토리를 포크하세요 <br>
브랜치를 새로 만드세요. (git checkout -b my-new-feature)<br>
바뀌어진 점을 커밋하세요. (git commit -am 'Add some feature')<br>
브랜치를 푸시하세요. (git push origin my-new-feature)<br>
Pull Request 새로 만드세요. <br>

# 📃 License 
```
Copyright (c) 2022 Asad Khan

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
```
