import 'package:flutter/material.dart';

class InstallPage extends StatefulWidget {
  const InstallPage({Key? key}) : super(key: key);

  @override
  State<InstallPage> createState() => _InstallPageState();
}
class _InstallPageState extends State<InstallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.all(5),
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/warning.png'),
                    Text("The system has been destroyed",
                        style: TextStyle(color: Colors.white, fontSize: 15)),
                    SizedBox(height: 20),
                    Text("Press power button to shutdown",
                        style: TextStyle(color: Colors.grey, fontSize: 13))
                  ]),
            )));
  }
}
