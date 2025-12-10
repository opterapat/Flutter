import 'package:flutter/material.dart';
import 'dart:math' show pow, sqrt;

void main() {
  runApp(const CW2PAGE1());
}

class CW2PAGE1 extends StatelessWidget {
  const CW2PAGE1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CW2',
      debugShowCheckedModeBanner: false,
      home: CW2PAGE2(),
    );
  }
}

class CW2PAGE2 extends StatefulWidget {
  const CW2PAGE2({super.key});

  @override
  State<CW2PAGE2> createState() => _CW2PAGE2State();
}

class _CW2PAGE2State extends State<CW2PAGE2> {
  int num = 0;
  String num1 = "";
  String num2 = "";
  String Operator = "";
  String ShowVal = "0";
  String result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Calculator", style: TextStyle(fontSize: 30)),
            Container(
              width: double.infinity,
              height: 100,
              alignment: Alignment.center,
              padding: const EdgeInsets.all(20),
              child: Text(
                ShowVal,
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 10),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (Operator.isEmpty) {
                        num1 += "7";
                        ShowVal = num1;
                      } else {
                        num2 += "7";
                        ShowVal = num2;
                      }
                    });
                  },
                  child: Text("7", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(width: 10),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (Operator.isEmpty) {
                        num1 += "8";
                        ShowVal = num1;
                      } else {
                        num2 += "8";
                        ShowVal = num2;
                      }
                    });
                  },
                  child: Text("8", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(width: 10),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (Operator.isEmpty) {
                        num1 += "9";
                        ShowVal = num1;
                      } else {
                        num2 += "9";
                        ShowVal = num2;
                      }
                    });
                  },
                  child: Text("9", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(width: 10),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      Operator = "+";
                    });
                  },
                  child: Text("+", style: TextStyle(fontSize: 30)),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 10),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (Operator.isEmpty) {
                        num1 += "4";
                        ShowVal = num1;
                      } else {
                        num2 += "4";
                        ShowVal = num2;
                      }
                    });
                  },
                  child: Text("4", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(width: 10),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (Operator.isEmpty) {
                        num1 += "5";
                        ShowVal = num1;
                      } else {
                        num2 += "5";
                        ShowVal = num2;
                      }
                    });
                  },
                  child: Text("5", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(width: 10),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (Operator.isEmpty) {
                        num1 += "6";
                        ShowVal = num1;
                      } else {
                        num2 += "6";
                        ShowVal = num2;
                      }
                    });
                  },
                  child: Text("6", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(width: 10),
                FloatingActionButton(
                  onPressed: () {
                    Operator = "-";
                  },
                  child: Text("-", style: TextStyle(fontSize: 30)),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 10),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (Operator.isEmpty) {
                        num1 += "1";
                        ShowVal = num1;
                      } else {
                        num2 += "1";
                        ShowVal = num2;
                      }
                    });
                  },
                  child: Text("1", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(width: 10),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (Operator.isEmpty) {
                        num1 += "2";
                        ShowVal = num1;
                      } else {
                        num2 += "2";
                        ShowVal = num2;
                      }
                    });
                  },
                  child: Text("2", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(width: 10),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (Operator.isEmpty) {
                        num1 += "3";
                        ShowVal = num1;
                      } else {
                        num2 += "3";
                        ShowVal = num2;
                      }
                    });
                  },
                  child: Text("3", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(width: 10),
                FloatingActionButton(
                  onPressed: () {
                    Operator = "*";
                  },
                  child: Text("*", style: TextStyle(fontSize: 30)),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 10),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (Operator.isEmpty) {
                        num1 += "0";
                        ShowVal = num1;
                      } else {
                        num2 += "0";
                        ShowVal = num2;
                      }
                    });
                  },
                  child: Text("0", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(width: 10),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      num = 0;
                      num1 = "";
                      num2 = "";
                      Operator = "";
                      ShowVal = "0";
                      result = "";
                    });
                  },
                  backgroundColor: const Color.fromARGB(255, 83, 0, 161),
                  child: Text(
                    "C",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
                SizedBox(width: 10),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      // ถ้าเป็น SQ ไม่ต้องมี num2
                      if (Operator != "sq" && (num1.isEmpty || num2.isEmpty)) {
                        return;
                      }

                      double n1 = double.tryParse(num1) ?? 0;
                      double n2 = double.tryParse(num2) ?? 0;
                      double res = 0;

                      if (Operator == "+") {
                        res = n1 + n2;
                      } else if (Operator == "-") {
                        res = n1 - n2;
                      } else if (Operator == "*") {
                        res = n1 * n2;
                      } else if (Operator == "/") {
                        if (n2 != 0) {
                          res = n1 / n2;
                        } else {
                          ShowVal = "ERROR";
                          num1 = "";
                          num2 = "";
                          Operator = "";
                          return;
                        }
                      } else if (Operator == "%") {
                        res = n1 * (n2 / 100);
                      } else if (Operator == "^") {
                        res = pow(n1, n2).toDouble();
                      } else if (Operator == "sq") {
                        res = sqrt(n1);
                      } 
                      

                      // show result
                      ShowVal = res.toString();

                      // reset
                      num1 = res.toString();
                      num2 = "";
                      Operator = "";
                    });
                  },
                  child: Text("=", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(width: 10),
                FloatingActionButton(
                  onPressed: () {
                    Operator = "/";
                  },
                  child: Text("/", style: TextStyle(fontSize: 30)),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 10),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (Operator.isEmpty) {
                        if (num1.isNotEmpty) {
                          num1 = num1.substring(0, num1.length - 1);
                          ShowVal = num1.isEmpty ? "0" : num1;
                        }
                      } else if (num2.isNotEmpty) {
                        num2 = num2.substring(0, num2.length - 1);
                        ShowVal = num2.isEmpty ? "0" : num2;
                      } else {
                        Operator = "";
                        ShowVal = num1.isEmpty ? "0" : num1;
                      }
                    });
                  },
                  child: Text(
                    'Del',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  backgroundColor: Colors.blue,
                ),
                SizedBox(width: 10),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      Operator = '%';
                    });
                  },
                  child: Text(
                    '%',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  backgroundColor: Colors.deepOrange,
                ),
                SizedBox(width: 10),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      Operator = "^";
                    });
                  },
                  child: Text(
                    '^',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  backgroundColor: Colors.deepOrange,
                ),
                SizedBox(width: 10),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      Operator = "sq";
                      ShowVal = "√($num1)"; // Show the operation on the display
                    });
                  },
                  child: Text(
                    '√',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  backgroundColor: Colors.deepOrange,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
