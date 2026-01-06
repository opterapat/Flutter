import 'package:flutter/material.dart';
import 'shopping.dart';
class Myhomepage extends StatelessWidget {
  const Myhomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("WEEK 6"),centerTitle: true,),
      body: Column(
        children: [
          Padding(padding: EdgeInsetsGeometry.all(8.0),
          child: Center(
            child: Column(
              children: [
          Text('Button',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
          SizedBox(height: 20,),
          ElevatedButton(
            onPressed: ()=> showDialog(context: context, builder: (BuildContext context) => AlertDialog(
      title: const Text("แจ้งเตือน"), // หัวข้อ
      content: const Text("คุณกดปุ่ม Elevated Button!"),
       actions: <Widget>[
       TextButton(onPressed: () => Navigator.pop(context,'cancel'),
       child:  const Text("Cancel")),
       TextButton(onPressed: () => Navigator.pop(context,'cancel'),
       child:  const Text("Okay"))]
            )), 
            child: Text("Elevated Button"),
            style: ElevatedButton.styleFrom(
              fixedSize: Size(300, 80),
                 backgroundColor: Colors.blue, // สีพื้นหลัง
                  foregroundColor: Colors.white, // สีข้อความ
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
            ),
            elevation: 5,
            ),
            ),
            SizedBox(height: 10,),
          OutlinedButton(
            onPressed: (){}, 
            child: Text("OutlinedButton"),
            style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.green, width: 2),
                  foregroundColor: Colors.green,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),)
            ),
                        SizedBox(height: 10,),
          TextButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return Shopping();
              }));
            },
            child: Text("TextButton"),
            style: TextButton.styleFrom(
                  foregroundColor: Colors.orange,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30, vertical: 15),
                  textStyle: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
            )
              ],
            ),
          ),)
        ],
      ),
    );
  }
}