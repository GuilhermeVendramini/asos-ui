import 'package:asos_ui/app/screens/main.dart';
import 'package:asos_ui/app/screens/settings.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  VideoPlayerController _controller;
  Color _textColor = Colors.white;
  Color _transparent = Colors.transparent;
  Color _buttonColor = Colors.black.withOpacity(0.4);

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/videos/intro.mp4')
      ..play()
      ..setLooping(true)
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          _video(width: MediaQuery.of(context).size.width),
          _video(width: _controller.value.size?.width),
          _background(),
          _main(),
        ],
      ),
    );
  }

  Widget _shopIn() {
    return Column(
      children: <Widget>[
        Text(
          'SHOP IN',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: _textColor,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        _appSettings(),
      ],
    );
  }

  Widget _appSettings() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          child: RaisedButton(
            color: _transparent,
            elevation: 0.0,
            onPressed: () {
              Route route = MaterialPageRoute(
                builder: (context) => SettingsScreen(),
              );
              Navigator.push(context, route);
            },
            child: Row(
              children: <Widget>[
                Image(
                  image: AssetImage(
                    'assets/images/br.png',
                  ),
                  height: 20.0,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'Brazil, \$ USD',
                  style: TextStyle(
                    color: _textColor,
                  ),
                ),
              ],
            ),
          ),
        ),
        Text(
          '|',
          style: TextStyle(
            color: _textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          child: RaisedButton(
            color: _transparent,
            elevation: 0.0,
            onPressed: () {
              Route route = MaterialPageRoute(
                builder: (context) => SettingsScreen(),
              );
              Navigator.push(context, route);
            },
            child: Text(
              'CHANGE',
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

  Widget _buttons() {
    return Column(
      children: <Widget>[
        Container(
          width: 260.0,
          height: 50.0,
          child: RaisedButton(
            color: _buttonColor,
            onPressed: _goToHome,
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
            color: _buttonColor,
            onPressed: _goToHome,
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
    return Container(
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.all(10.0),
      alignment: Alignment.center,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _brand(),
            SizedBox(
              height: 40.0,
            ),
            _shopIn(),
            SizedBox(
              height: 40.0,
            ),
            _buttons(),
          ],
        ),
      ),
    );
  }

  Widget _brand() {
    return Text(
      'asos',
      style: TextStyle(
        fontSize: 100.0,
        fontWeight: FontWeight.w500,
        color: _textColor,
      ),
    );
  }

  Widget _background() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.2),
      ),
    );
  }

  Widget _video({double width}) {
    return _controller.value.initialized
        ? Align(
            alignment: Alignment.center,
            child: Container(
              width: width,
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

  void _goToHome() {
    Route route = MaterialPageRoute(
      builder: (context) => MainScreen(),
    );
    Navigator.push(context, route);
  }
}
