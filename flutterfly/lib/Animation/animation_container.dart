import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _height = 100.0;
  var _width = 200.0;
  bool flag = true;
  Decoration mydeco = BoxDecoration(
    color: Colors.amber,
    borderRadius: BorderRadius.circular(20),
  );
  Curve mycurve = Curves.bounceInOut;

  // This widget is the home page of your application. It is stateful, meaning
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
        title: Text("F00 Animation"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              width: _width,
              curve: mycurve,
              height: _height,
              decoration: mydeco,
              duration: Duration(
                seconds: 2,
              ),
              // animation is all about time duration
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (flag) {
                      _width = 100.0;
                      _height = 200.0;
                      mydeco = BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(100),
                      );
                      flag = false;
                    } else {
                      _width = 200.0;
                      _height = 100.0;
                      mydeco = BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(100),
                      );

                      flag = true;
                    }
                  });
                },
                child: Text("Animate"))
          ],
        ),
      ),
    );
  }
}
