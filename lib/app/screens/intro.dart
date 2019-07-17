import 'package:asos_ui/utils/portraitScreen.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  VideoPlayerController _controller;
  Color _textColor = Colors.white;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://video.asos-media.com/products/ASOS/_media_/6b2/6b25d75a-ef03-41ae-86cf-3a7a019d8c96.mp4')
      ..play()
      ..setLooping(true)
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    portraitScreen();

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          _video(),
          _background(),
          _main(),
          _box(),
        ],
      ),
    );
  }

  Widget _box() {
    return Positioned(
      right: 0.0,
      left: 0.0,
      bottom: 40.0,
      child: Column(
        children: <Widget>[
          _shopIn(),
          SizedBox(
            height: 60.0,
          ),
          _buttons(),
        ],
      ),
    );
  }

  Widget _shopIn() {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            'SHOP IN',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: _textColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buttons() {
    return Column(
      children: <Widget>[
        Container(
          width: 260.0,
          height: 50.0,
          child: RaisedButton(
            child: Text(
              'WOMEN',
              style: TextStyle(
                color: _textColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Container(
          width: 260.0,
          height: 50.0,
          child: RaisedButton(
            child: Text(
              'MEN',
              style: TextStyle(
                color: _textColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _main() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _brand(),
        ],
      ),
    );
  }

  Widget _brand() {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        padding: EdgeInsets.only(top: 60.0),
        child: Text(
          'asos',
          style: TextStyle(
            fontSize: 100.0,
            fontWeight: FontWeight.w500,
            color: _textColor,
          ),
        ),
      ),
    );
  }

  Widget _background() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.4),
      ),
    );
  }

  Widget _video() {
    return _controller.value.initialized
        ? Align(
            alignment: Alignment.center,
            child: Container(
              child: VideoPlayer(
                _controller,
              ),
            ),
          )
        : Container(
            alignment: Alignment.center,
            child: CircularProgressIndicator(),
          );
  }
}
