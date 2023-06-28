import 'package:flutter/material.dart';
import 'package:prev_next/prev_next.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Test Package",
      theme: ThemeData(
        primaryColor: Colors.deepPurpleAccent
      ),
      home: const _MyTestPage(),
    );
  }
}

class _MyTestPage extends StatelessWidget {
  const _MyTestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test Package"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: PrevNext(
                prevImage: Image.network("https://scontent-gmp1-1.xx.fbcdn.net/v/t39.30808-6/292164839_5922693044501382_7982120233809238230_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=730e14&_nc_ohc=PLkAVG5o6EAAX9Vrvd3&_nc_ht=scontent-gmp1-1.xx&oh=00_AfAKdBXdBCKOxftY3hbMOQONLegNxiztoimQosk3PtYshA&oe=64A0E85A"),
                nextImage: Image.network("https://scontent-gmp1-1.xx.fbcdn.net/v/t39.30808-6/292306069_5922693094501377_2145151340766256929_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=730e14&_nc_ohc=74eswlzpKOUAX_NrL4O&_nc_ht=scontent-gmp1-1.xx&oh=00_AfDawA1g1Gqz5ybBAbLz6Jy_EbQcONUiuDKvSZOqzPKKqw&oe=64A0A6EB"),
                isVertical: true,
                thumbColor: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}





