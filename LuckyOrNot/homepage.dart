import 'package:flutter/material.dart';
import 'result.dart';
import 'dart:math';

class HomepageUp extends StatelessWidget {
  const HomepageUp({super.key});

  @override
  Widget build(BuildContext context) {
    return UserInterface();
  }
}

class UserInterface extends StatefulWidget {
  const UserInterface({super.key});

  @override
  State<UserInterface> createState() => _UserInterfaceState();
}

class _UserInterfaceState extends State<UserInterface> {
  final TextEditingController num1 = TextEditingController();
  final TextEditingController num2 = TextEditingController();
  final TextEditingController num3 = TextEditingController();
  final TextEditingController money = TextEditingController();

  @override
  Widget build(BuildContext context) {
    int check_n1 = Random().nextInt(10);
    int check_n2 = Random().nextInt(10);
    int check_n3 = Random().nextInt(10);
    print([check_n1, check_n2, check_n3]);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ซื้อทั้งชาติก็ไม่ถูกหรอกครับ😭",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.all(16),
        child: Column(
          children: [
            SizedBox(height: 10),
            Text("ใส่เลขที่คิดจะถูกเลยครับ😥"),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Number 3"),
                SizedBox(width: 40),
                Text("Number 2"),
                SizedBox(width: 40),
                Text("Number 1"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: num1,
                    maxLength: 1,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      counterText: '',
                    ),
                  ),
                ),
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: num2,
                    maxLength: 1,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      counterText: '',
                    ),
                  ),
                ),
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: num3,
                    maxLength: 1,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      counterText: '',
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),
            Text("ใส่จำนวนเงินน่ะ🦜"),
            SizedBox(height: 20),
            TextField(
              controller: money,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'จำนวนเงินที่ต้องการซื้อ',
                suffixText: 'บาท',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                if (num1.text.isEmpty ||
                    num2.text.isEmpty ||
                    num3.text.isEmpty ||
                    money.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('กรอกข้อมูลไม่ครบไม่ได้ซื้อน่ะ👽'),
                    ),
                  );
                  return;
                }
                int n1 = int.parse(num1.text);
                int n2 = int.parse(num2.text);
                int n3 = int.parse(num3.text);
                int m = int.parse(money.text);
                int r1 = check_n1;
                int r2 = check_n2;
                int r3 = check_n3;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultCheck(
                      num1: n1,
                      num2: n2,
                      num3: n3,
                      money: m,
                      rand1: r1,
                      rand2: r2,
                      rand3: r3,
                    ),
                  ),
                );
              },
              child: Text("จะได้ถูกหวยหรือถูกหวยกิน🦭"),
            ),
          ],
        ),
      ),
    );
  }
}
