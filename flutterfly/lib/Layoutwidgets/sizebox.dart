import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
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
        title: Text("Sized box"),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.red,
              border: Border.all(color: Colors.black26, width: 5)),
          width: 300,
          height: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Container(
                    height: 40,
                    width: 400,
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Colors.black,
                    )),
                    child: Center(
                      child: Text(
                        " Size boxs works in flutter",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )),
              ),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: 100,
                  maxHeight: 200,
                  minHeight: 50,
                  minWidth: 100,
                ),
                child: SizedBox.shrink(
                  // from minimun height and width
                  child: ElevatedButton(
                      onPressed: () {}, child: Text("Click here")),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 50,
                width: 100,
                child: ElevatedButton(onPressed: () {}, child: Text("Login")),
              ),
              SizedBox(
                height: 30,
              ),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: 150,
                  maxHeight: 80,
                  minHeight: 50,
                  minWidth: 100,
                ),
                child: SizedBox.expand(
                  // from minimun height and width
                  child: ElevatedButton(
                      onPressed: () {}, child: Text("Register here")),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
