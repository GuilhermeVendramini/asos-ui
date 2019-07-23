import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ProductScreen extends StatefulWidget {
  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  VideoPlayerController _controller;
  bool _isFavorite = false;

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
    return WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    _video(),
                    _description(),
                  ],
                ),
                _main(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _main() {
    return Container(
      color: Colors.white.withOpacity(0.4),
      child: Column(
        children: <Widget>[
          _colorAndSize(),
          _addToBag(),
          _specifications(),
          SizedBox(
            height: 40.0,
          ),
        ],
      ),
    );
  }

  Widget _specifications() {
    Color _textColor = Colors.grey[700];
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(20.0),
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey[300],
            ),
          ),
          child: Text(
            "DELIVERY & RETURNS INFO",
            style: TextStyle(
              fontSize: 16.0,
              color: _textColor,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20.0),
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey[300],
            ),
          ),
          child: Text(
            "PRODUCT DETALIS",
            style: TextStyle(
              fontSize: 16.0,
              color: _textColor,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20.0),
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey[300],
            ),
          ),
          child: Text(
            "SIZE GUIDE",
            style: TextStyle(
              fontSize: 16.0,
              color: _textColor,
            ),
          ),
        ),
      ],
    );
  }

  Widget _colorAndSize() {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey[300],
          ),
        ),
      ),
      padding: EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'PINK',
            style: TextStyle(
              color: Theme.of(context).textTheme.body1.color.withOpacity(0.2),
              fontWeight: FontWeight.bold,
              fontSize: 14.0,
            ),
          ),
          GestureDetector(
            onTap: () {
              _bottomSheet(context);
            },
            child: Container(
              padding: EdgeInsets.only(left: 20.0),
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(
                    color: Colors.grey[300],
                  ),
                ),
              ),
              width: 180.0,
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'SIZE',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                    ),
                  ),
                  Icon(Icons.expand_more),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _description() {
    return Positioned(
      left: 0.0,
      right: 0.0,
      bottom: 0.0,
      child: Container(
        height: 100.0,
        color: Colors.white.withOpacity(0.8),
        padding: EdgeInsets.all(20.0),
        child: Text(
          'ASOS DESIGN Luxe leopard cape back playsuit in leopard print',
          style: TextStyle(
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }

  Widget _video() {
    return AspectRatio(
      aspectRatio: _controller.value.aspectRatio,
      child: Container(
        color: Colors.red[50],
        alignment: Alignment.topCenter,
        child: _controller.value.initialized
            ? AspectRatio(
                child: VideoPlayer(_controller),
                aspectRatio: _controller.value.aspectRatio,
              )
            : Container(
                alignment: Alignment.center,
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }

  Widget _addToBag() {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: 4.0,
              top: 4.0,
              bottom: 4.0,
              right: 20.0,
            ),
            width: 260.0,
            alignment: Alignment.centerLeft,
            child: RaisedButton(
              padding: EdgeInsets.all(16.0),
              color: Colors.green.shade800,
              onPressed: () {},
              child: Container(
                width: 260.0,
                alignment: Alignment.center,
                child: Text(
                  'ADD TO BAG',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(4.0),
            child: RaisedButton(
              onPressed: () {
                setState(() {
                  _isFavorite = _isFavorite ? false : true;
                });
              },
              disabledColor: Colors.grey[300],
              padding: EdgeInsets.all(14.0),
              shape: CircleBorder(),
              child: Container(
                child: Icon(
                  _isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void _bottomSheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Container(
          child: Wrap(
            children: <Widget>[
              ListTile(title: Text('UK 4'), onTap: () => {}),
              ListTile(
                title: Text('UK 5'),
                onTap: () => {},
              ),
              ListTile(title: Text('UK 6'), onTap: () => {}),
              ListTile(
                title: Text('UK 7'),
                onTap: () => {},
              ),
              ListTile(title: Text('UK 8'), onTap: () => {}),
              ListTile(
                title: Text('UK 9'),
                onTap: () => {},
              ),
            ],
          ),
        );
      });
}
