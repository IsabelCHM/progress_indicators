import 'package:flutter/material.dart';
import 'package:progress_indicators/progress_indicators.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Progress Indicators',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Progress Indicators'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('Jumping dots'),
            JumpingDotsProgressIndicator(
              fontSize: 20.0,
            ),
            SizedBox(height: 60.0),
            new Text('Heartbeat'),
            SizedBox(height: 16.0),
            HeartbeatProgressIndicator(
              child: Icon(Icons.home),
            ),
            SizedBox(height: 60.0),
            new Text('Glowing'),
            GlowingProgressIndicator(
              child: Icon(Icons.home),
            ),
            AnimatedText('Loading'),
          ],
        ),
      ),
    );
  }
}

class AnimatedText extends StatefulWidget {
  final String text;
  AnimatedText(this.text);

  @override
  _AnimatedTextState createState() => new _AnimatedTextState();
}

class _AnimatedTextState extends State<AnimatedText> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.text);
  }
}
