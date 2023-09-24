import 'package:flutter/material.dart';
import 'package:meals/data/datasource/categories_data.dart';
import 'package:meals/presentation/pages/categories.dart';
import 'package:meals/presentation/widget/categories_container.dart';

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
        colorScheme: ColorScheme.highContrastDark(),
        useMaterial3: true,
      ),
      home: Categories(
        title: 'Categories',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

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
    int index = 0;

    List<Widget> body = [
      GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, i) => CategoriesContainer(
          category: category[i],
        ),
        itemCount: category.length,
      ),
      Container(
        color: Colors.amber,
        height: 100,
        width: 100,
      )
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text("Id= "),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color.fromARGB(255, 15, 10, 8),
        selectedIconTheme: IconThemeData(size: 30),
        selectedFontSize: 20,
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
            print(value);
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: "Categories"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favorite"),
        ],
        backgroundColor: Color.fromARGB(255, 42, 17, 8),
      ),
      body: body.elementAt(index),
    );
  }
}
