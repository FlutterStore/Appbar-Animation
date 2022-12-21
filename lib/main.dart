import 'package:flutter/material.dart';
import 'package:appbar_animated/appbar_animated.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimationaAppbar(),
    );
  }
}

class AnimationaAppbar extends StatefulWidget {
  const AnimationaAppbar({super.key});

  @override
  State<AnimationaAppbar> createState() => _AnimationaAppbarState();
}

class _AnimationaAppbarState extends State<AnimationaAppbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScaffoldLayoutBuilder(
        backgroundColorAppBar: const ColorBuilder(Colors.transparent, Colors.green),
        textColorAppBar: const ColorBuilder(Colors.white), 
        appBarBuilder: _appBar,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Image.network(
                "https://www.gotravelly.com/blog/wp-content/uploads/2019/10/Gunung-Fuji-Jepang.jpg",
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.5,
                fit: BoxFit.cover,
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.36,
                    ),
                    padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height/3),
                    height: MediaQuery.of(context).size.height,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(40),
                      ),
                      color: Colors.white,
                    ),
                    child: const Center(child: Text("Successoft Infotech",style: TextStyle(fontSize: 25),)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }


  Widget _appBar(BuildContext context, ColorAnimated colorAnimated) {
    return AppBar(
      backgroundColor: colorAnimated.background,
      elevation: 0,
      centerTitle: true,
      title: Text(
        "AppBar Animation",
        style: TextStyle(
          color: colorAnimated.color,
          fontSize: 15
        ),
      ),
      leading: Icon(
        Icons.arrow_back_ios_new_rounded,
        color: colorAnimated.color,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.favorite,
            color: colorAnimated.color,
          ),
        ),
      ],
    );
  }
}