import 'package:flutter/material.dart';
import 'Home.dart';
class Shopping extends StatelessWidget {
  const Shopping({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("shopping"),centerTitle: true,),
      body: Center(
        child: ElevatedButton(child: Row(
          mainAxisAlignment: MainAxisAlignment.center,children: [
            Text("Go to the Home page"),
            Icon(Icons.add_shopping_cart_outlined)
          ],
        ),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return Myhomepage();
          }
          )
          );
        },
        ),
      ),
    );
  }
}