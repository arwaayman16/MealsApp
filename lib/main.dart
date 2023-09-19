import 'package:flutter/material.dart';
import 'package:meals/presentation/pages/categories.dart';

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
        // the application has a blue toolbar. Then, without quitting the app,
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
        colorScheme:ColorScheme.highContrastDark(),
        useMaterial3: true,
      ),
      home:Categories(),
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
        backgroundColor: Colors.brown,
        title: Text("Id= "),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // SizedBox(height: 8,),
          Container(
            height: 300,
            width: 400,
            child: Image.asset(
              "",
              width: 200,
              height: 300,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            "   ID: ",
            textAlign: TextAlign.start,
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.w700, color: Colors.brown),
          ),
          Text(
            "   Name: ",
            textAlign: TextAlign.start,
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.w700, color: Colors.brown),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Text(
              "advice",
              style: TextStyle(fontSize: 22),
            ),
          ),
          Spacer(),
          Container(
              child: ElevatedButton(
                onPressed: () =>(),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.brown),
                child: Text(
                  "adopt",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              width: 410,
              height: 50,
              color: const Color.fromARGB(255, 229, 225, 224))
        ],
      ),
    );
  }
}
