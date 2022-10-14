import 'package:flutter/material.dart';
import 'InstallPage.dart';
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

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: "adrod 13 installer"),
      routes: {
        '/home': (context) => const MyHomePage(title: "adrod 13 installer"),
        '/install': (context) => const InstallPage(),
      },
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

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
          children: <Widget>[
            Image(
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width * 3,
              image: AssetImage('assets/images/download.png'),

            ),
            Text('adrod 13 installer', style: TextStyle(fontSize: 60)),
            // align button to left
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Navigate to the second screen using a named route.
                    Navigator.pushNamed(context, '/install');
                    // show snackbar
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('bro ur phon has been bricked💀💀💀'), duration: Duration(seconds: 3)));
                  },
                  child: const Text('INSTALL ADROD'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey,
                    onPrimary: Colors.white,
                    minimumSize: Size(100, 40),
                    // make it a rectangle
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),

                ),
              ),
            ),

          ],
        ),
    );
  }
}
