import 'package:flutter/material.dart';
import 'package:your_project_name/homepage.dart';
import 'homepage.dart';
import 'dart:math';

class FontResult extends StatelessWidget {
  const FontResult({super.key});

  @override
  Widget build(BuildContext context) {
    return ResultCheck(
      num1: 1,
      num2: 2,
      num3: 3,
      money: 100,
      rand1: 1,
      rand2: 2,
      rand3: 3,
    );
  }
}

class ResultCheck extends StatefulWidget {
  final int num1;
  final int num2;
  final int num3;
  final int money;
  final int rand1;
  final int rand2;
  final int rand3;

  const ResultCheck({
    super.key,
    required this.num1,
    required this.num2,
    required this.num3,
    required this.money,
    required this.rand1,
    required this.rand2,
    required this.rand3,
  });
  @override
  State<ResultCheck> createState() => _ResultCheckState();
}

class _ResultCheckState extends State<ResultCheck> {
  @override
  Widget build(BuildContext context) {
    bool isWin =
        widget.num1 == widget.rand1 &&
        widget.num2 == widget.rand2 &&
        widget.num3 == widget.rand3;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ถูกหวยหรือถูกหวยกิน",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.amber,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.all(16),
        child: Column(
          children: [
            SizedBox(height: 2),
            Text(
              "รางวัลที่ออก",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 10),
                Text(
                  widget.rand1.toString(),
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(
                  widget.rand2.toString(),
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(
                  widget.rand3.toString(),
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "เลขของคุณ: ${widget.num1}${widget.num2}${widget.num3}",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (isWin)
                  Text(
                    "🎉 ยินดีด้วย คุณถูกหวย!\n คุณได้เงิน ${widget.money * 100} บาท 🏆",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  )
                else
                  Text(
                    "😭 โดนหวยกิน! เสียเงิน ${widget.money} บาท",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
              ],
            ),
            SizedBox(height: 20),
            FloatingActionButton.extended(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => UserInterface()),
                );
              },
              label: Text(
                "กลับไปเพื่อเล่นอีกรอบ 💩",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              icon: Icon(Icons.replay, size: 24),
              backgroundColor: Colors.deepPurpleAccent,
              foregroundColor: Colors.white,
              elevation: 8, // เงา
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
