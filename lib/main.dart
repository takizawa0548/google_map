import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demsso',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter2ss Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ElevatedButton(
              onPressed: () {
                final url = Uri.parse('https://www.google.com/maps/search/?api=1&query=%E3%80%92103-0027+%E6%9D%B1%E4%BA%AC%E9%83%BD%E4%B8%AD%E5%A4%AE%E5%8C%BA%E6%97%A5%E6%9C%AC%E6%A9%8B%EF%BC%92%E4%B8%81%E7%9B%AE%EF%BC%97%E2%88%92%EF%BC%91+%E6%9D%B1%E4%BA%AC%E6%97%A5%E6%9C%AC%E6%A9%8B%E3%82%BF%E3%83%AF%E3%83%BC%EF%BC%92%EF%BC%97%E9%9A%8E&hl=ja');
                launchUrl(url);
              },
              child: const Text('GoogleMapsを住所検索でブラウザで開く'),
            ),
            ElevatedButton(
              onPressed: () {
                final url = Uri.parse('https://www.google.com/maps/dir/?api=1&destination=%E3%80%92103-0027+%E6%9D%B1%E4%BA%AC%E9%83%BD%E4%B8%AD%E5%A4%AE%E5%8C%BA%E6%97%A5%E6%9C%AC%E6%A9%8B%EF%BC%92%E4%B8%81%E7%9B%AE%EF%BC%97%E2%88%92%EF%BC%91+%E6%9D%B1%E4%BA%AC%E6%97%A5%E6%9C%AC%E6%A9%8B%E3%82%BF%E3%83%AF%E3%83%BC%EF%BC%92%EF%BC%97%E9%9A%8E&travelmode=walking'); 
                launchUrl(url);
              },
              child: const Text('GoogleMapsを住所検索で歩行ルート案内をブラウザで開く'),
            ),
            ElevatedButton(
              onPressed: () {
                final url = Uri.parse('https://www.google.com/maps/search/?api=1&query=36.590568,140.661842');
                launchUrl(url);
              },
              child: const Text('GoogleMapsを緯度経度でブラウザで開く'),
            ),
            ElevatedButton(
              onPressed: () {
                final url = Uri.parse('https://maps.app.goo.gl/5VDGYKFtDwdyd6ze9');
                launchUrl(url);
              },
              child: const Text('GoogleMapsを短縮URLでアプリ（なければブラウザ）で開く'),
            ),
            ElevatedButton(
              onPressed: () {
                final url = Uri.parse('https://maps.apple.com/?q=36.590568,140.661842');
                launchUrl(url);
              },
              child: const Text('Apple Mapsを開く'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
