import 'package:flutter/material.dart';
import 'package:flutterfly/wrap.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late Animation boxcontroller;
  late AnimationController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3))
          ..repeat();
    controller.addListener(() {
      setState(() {});
    });
    controller.forward();
    boxcontroller = Tween(begin: 0.0, end: 500.0).animate(controller);

    Animation<double> fadeAnimation = Tween(begin: 0.0, end: 0.1)
        .animate(CurvedAnimation(parent: controller, curve: Curves.bounceIn));
  }

  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("sujal kc"),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: controller,
          builder: (context, child) {
            return ShaderMask(
              shaderCallback: (bounds) {
                return LinearGradient(
                  colors: [Colors.black, Colors.blue, Colors.green, Colors.red],
                  stops: [
                    controller.value - 0.009,
                    controller.value + 0.001,
                    controller.value + 0.002,
                    controller.value + 0.002
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  tileMode: TileMode.mirror,
                ).createShader(bounds);
              },
              child: SizedBox(
                width: boxcontroller.value,
                height: boxcontroller.value,
                child: Text(
                  "Bwfour",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight(1000),
                      color: Colors.white),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
