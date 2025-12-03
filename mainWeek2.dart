import 'package:flutter/material.dart';
import 'package:your_project_name/main%20copy.dart';

void main() {
  runApp(SuperIdol());
  print("Hello World");
}

class SuperIdol extends StatelessWidget {
  const SuperIdol({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      debugShowCheckedModeBanner: false,
      home: SuperIdolFull(),
    );
  }
}

class SuperIdolFull extends StatefulWidget {
  const SuperIdolFull({super.key});

  @override
  State<SuperIdolFull> createState() => _SuperIdolFullState();
}

class _SuperIdolFullState extends State<SuperIdolFull> {
  int num = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("10352-TERAPAT")),
      // AppBar
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Press for plus number.", style: TextStyle(fontSize: 20)),
          Text(
            num.toString(),
            style: TextStyle(fontSize: 20),
          ),
          FloatingActionButton(onPressed: () {
            setState(() {
              num++;
            });
          },
          child: Icon(Icons.add),
          ),
          Image.network(
              "https://scontent-bkk1-2.xx.fbcdn.net/v/t39.30808-6/590428508_2256424771542945_5280823132177793190_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=127cfc&_nc_ohc=2n_8Ie1rTRgQ7kNvwFnPiwF&_nc_oc=AdmcKSUWjU3tpf_JNEeTVcWdKK73se9SNwMiQk5JoRJ8X3V6dvDR5dRiKqHzrWoZAjM&_nc_zt=23&_nc_ht=scontent-bkk1-2.xx&_nc_gid=gFvp7fNfTqIUjwGUmTlrIA&oh=00_AfgXUYsm4hV7P8XwVb4t12XKHNxBnsWVPEE17uNBFMEyyg&oe=6932F425"),
          Text("Hello Bro.",
              style: TextStyle(
                fontSize: 20,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ))
        ],
      )),
    );
  }
}
