import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Gotham',
          primaryIconTheme: const IconThemeData(color: Colors.white)),
      home: const MusicScreen(),
    );
  }
}

class MusicScreen extends StatefulWidget {
  const MusicScreen({Key? key}) : super(key: key);



  @override
  State<MusicScreen> createState() => _MusicScreenState();
}

class _MusicScreenState extends State<MusicScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0xFF5f5f5f),
          elevation: 0.0,
          centerTitle: true,
          title: Column(
            children: const [
              Text(
                'PLAYING FROM ALBUM',
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(height: 4),
              Text('Perception', style: TextStyle(fontSize: 12))
            ],
          ),
          leading: const Padding(
            padding: EdgeInsets.fromLTRB(15.0,0,0,0),
            child: Icon(
              FontAwesomeIcons.angleDown,
              size: 26,
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.fromLTRB(0,0,15.0,0),
              child: Icon(
                FontAwesomeIcons.ellipsisVertical,
                size: 26,
              ),
            )
          ]),
      body: Container(decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Color(0xFF5f5f5f), Color(0xFF1c1c1c)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            tileMode: TileMode.clamp),
      ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Expanded(child: Image.asset('assets/image/cover.jpg')),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text('Destiny',
                          style: TextStyle(color: Colors.white, fontSize: 22)),
                      Text('NF',
                          style: TextStyle(color: Colors.white, fontSize: 12))
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        FontAwesomeIcons.heart,
                        size: 23,
                        color: Colors.white,
                      ))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  overlayShape: SliderComponentShape.noOverlay,
                  trackHeight: 3.0,
                  thumbShape:
                      const RoundSliderThumbShape(enabledThumbRadius: 5.0),
                ),
                child: Slider(
                  activeColor: Colors.white,
                  inactiveColor: Colors.white12,
                  min: 12,
                  max: 100,
                  value: 32,
                  onChanged: (newPosition) {},
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('1:24',
                      style: TextStyle(color: Colors.white, fontSize: 12)),
                  Text('4:35',
                      style: TextStyle(color: Colors.white, fontSize: 12)),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(FontAwesomeIcons.shuffle,
                      color: Colors.white, size: 30),
                  const Icon(FontAwesomeIcons.backwardStep,
                      color: Colors.white, size: 30),
                  CircleAvatar( radius: 40.0 , backgroundColor: Colors.white,
                    child: IconButton(onPressed: (){},
                      padding: const EdgeInsets.fromLTRB(6.0,0,0,0),
                      icon: const Icon(FontAwesomeIcons.play),
                        color: Colors.black, iconSize: 40),
                  ),
                  const Icon(FontAwesomeIcons.forwardStep,
                      color: Colors.white, size: 30),
                  const Icon(FontAwesomeIcons.repeat,
                      color: Colors.white, size: 30),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
