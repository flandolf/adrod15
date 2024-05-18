import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text("adrod 15 installer",
            style: TextStyle(fontSize: 20, color: Colors.white)),
      ),
      body: Column(
        children: <Widget>[
          Image(
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3,
            image: const AssetImage('assets/images/adrod15.png'),
          ),
          const Text('adrod 15 installer', style: TextStyle(fontSize: 60)),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FilledButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/install');
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('bro ur phon has been bricked💀💀💀'),
                      duration: Duration(seconds: 3)));
                },
                child: const Text('INSTALL ADROD'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
