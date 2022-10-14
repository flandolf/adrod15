import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("adrod 13 installer"),
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
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('bro ur phon has been bricked💀💀💀'),
                      duration: Duration(seconds: 3)));
                },
                child: Text('INSTALL ADROD'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey,
                  onPrimary: Colors.white,
                  minimumSize: Size(100, 40),
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
