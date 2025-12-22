import 'package:flutter/material.dart';
import 'foodMenu.dart';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'MENU THAILAND'),
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
  int total_price = 0;
  List<FoodMenu> menu = [
    FoodMenu("ผัด", "ผัดกระเพรา", "50", "assets/images/m1.jpg"),
    FoodMenu("ผัด", "ผัดไทยกุ้งสด", "60", "assets/images/m2.jpg"),
    FoodMenu("ซูชิ", "ซูชิ", "80", "assets/images/m3.jpg"),
    FoodMenu("ปิ้ง/ย่าง", "บาร์บีคิว", "40", "assets/images/m4.jpg"),
    FoodMenu("ของว่าง", "ซาลาเปา", "70", "assets/images/m5.jpg"),
    FoodMenu("ต้ม/แกง", "กุ้งเผา", "30", "assets/images/m6.jpg"),
    FoodMenu("ต้ม/แกง", "ต้มมะระ", "55", "assets/images/m7.jpg"),
    FoodMenu("ทอด", "ปลาทอด", "50", "assets/images/m8.jpg"),
    FoodMenu("อาหารเวียดนาม", "แหนมเนือง", "60", "assets/images/m9.jpg"),
    FoodMenu("ฟาสต์ฟู้ด", "เบอร์เกอร์", "55", "assets/images/m10.jpg"),
    FoodMenu("ต้ม/แกง", "ต้มยำกุ้ง", "80", "assets/images/m11.jpg"),
    FoodMenu("ผัด", "ผัดผักรวม", "45", "assets/images/m12.jpg"),
    FoodMenu("ผัด", "ผัดผงกะหรี่", "65", "assets/images/m13.jpg"),
    FoodMenu("ของว่าง", "ปอเปี๊ยะทอด", "40", "assets/images/m14.jpg"),
    FoodMenu("ทอด", "ปีกไก่ทอด", "70", "assets/images/m15.jpg"),
    FoodMenu("ข้าว", "ข้าวมันไก่", "55", "assets/images/m16.jpg"),
    FoodMenu("ข้าว", "ข้าวหมูแดง", "55", "assets/images/m17.jpg"),
    FoodMenu("ต้ม/แกง", "แกงเขียวหวานไก่", "65", "assets/images/m18.jpg"),
    FoodMenu("ผัด", "ผัดกะเพราไก่ไข่ดาว", "60", "assets/images/m19.jpg"),
    FoodMenu("ของหวาน", "ข้าวเหนียวมะม่วง", "50", "assets/images/m20.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: ListView.builder(
        itemCount: menu.length,
        itemBuilder: (BuildContext context, int index) {
          FoodMenu food = menu[index];
          return ListTile(
            leading: Image.asset(
              food.img,
              width: 70,
              height: 60,
              fit: BoxFit.cover,
            ),
            title: Text(
              "เมนูที่ ${index + 1}",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            subtitle: Text("${food.name} ราคา ${food.price} บาท"),
            onTap: () {
              total_price += int.parse(food.price);
              // print("คุณเลือกเมนู${food.name}");
              AlertDialog alert = AlertDialog(
                title: Text(
                    'คุณเลือกเมนู คือ ${food.name} จานล่ะ ${food.price} บาท ยอดรวม ${total_price} บาท'),
              );
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return alert;
                  });
            },
          );
        },
      ),
    );
  }
}
