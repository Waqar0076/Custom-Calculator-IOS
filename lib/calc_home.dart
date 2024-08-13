import 'package:calc/btn-screen.dart';
import 'package:calc/colors.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class CalcHome extends StatefulWidget {
  const CalcHome({super.key});

  @override
  State<CalcHome> createState() => _CalcHomeState();
}

class _CalcHomeState extends State<CalcHome> {
  // __

  String inputValue = "";
  String answer = "";

  equalButton() {
    Parser parser = Parser();
    Expression expression = parser.parse(inputValue);
    ContextModel contextModel = ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    inputValue,
                    style: const TextStyle(fontSize: 45, color: Colors.white),
                  ),
                  Text(
                    answer,
                    style: const TextStyle(fontSize: 45, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      BtnScreen(
                        title: "AC",
                        btnColor: CalcColor.lightGrey,
                        txtColor: Colors.black,
                        onTap: () {
                          setState(() {
                            inputValue = " ";
                            answer = " ";
                          });
                        },
                      ),
                      BtnScreen(
                        title: "+/-",
                        btnColor: CalcColor.lightGrey,
                        txtColor: Colors.black,
                        onTap: () {
                          setState(() {
                            inputValue += "-$inputValue";
                          });
                        },
                      ),
                      BtnScreen(
                        title: "%",
                        btnColor: CalcColor.lightGrey,
                        txtColor: Colors.black,
                        onTap: () {
                          setState(() {
                            inputValue += "%";
                          });
                          //  inputValue = inputValue + %
                        },
                      ),
                      BtnScreen(
                        title: "/",
                        btnColor: CalcColor.yellow,
                        txtColor: Colors.white,
                        onTap: () {
                          setState(() {
                            List division = [inputValue, "/"];
                            inputValue = division.join();
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      BtnScreen(
                        title: "7",
                        btnColor: CalcColor.lightGrey,
                        txtColor: Colors.black,
                        onTap: () {
                          setState(() {
                            inputValue += "7";
                          });
                        },
                      ),
                      BtnScreen(
                        title: "8",
                        btnColor: CalcColor.lightGrey,
                        txtColor: Colors.black,
                        onTap: () {
                          setState(() {
                            inputValue += "8";
                          });
                        },
                      ),
                      BtnScreen(
                        title: "9",
                        btnColor: CalcColor.lightGrey,
                        txtColor: Colors.black,
                        onTap: () {
                          setState(() {
                            inputValue += "9";
                          });
                        },
                      ),
                      BtnScreen(
                        title: "x",
                        btnColor: CalcColor.yellow,
                        txtColor: Colors.white,
                        onTap: () {
                          setState(() {
                            List division = [inputValue, "*"];
                            inputValue = division.join();
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      BtnScreen(
                        title: "4",
                        btnColor: CalcColor.lightGrey,
                        txtColor: Colors.black,
                        onTap: () {
                          setState(() {
                            inputValue += "4";
                          });
                        },
                      ),
                      BtnScreen(
                        title: "5",
                        btnColor: CalcColor.lightGrey,
                        txtColor: Colors.black,
                        onTap: () {
                          setState(() {
                            inputValue += "5";
                          });
                        },
                      ),
                      BtnScreen(
                        title: "6",
                        btnColor: CalcColor.lightGrey,
                        txtColor: Colors.black,
                        onTap: () {
                          setState(() {
                            inputValue += "6";
                          });
                        },
                      ),
                      BtnScreen(
                        title: "-",
                        btnColor: CalcColor.yellow,
                        txtColor: Colors.white,
                        onTap: () {
                          setState(() {
                            List division = [inputValue, "-"];
                            inputValue = division.join();
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      BtnScreen(
                        title: "1",
                        btnColor: CalcColor.lightGrey,
                        txtColor: Colors.black,
                        onTap: () {
                          setState(() {
                            inputValue += "1";
                          });
                        },
                      ),
                      BtnScreen(
                        title: "2",
                        btnColor: CalcColor.lightGrey,
                        txtColor: Colors.black,
                        onTap: () {
                          setState(() {
                            inputValue += "2";
                          });
                        },
                      ),
                      BtnScreen(
                        title: "3",
                        btnColor: CalcColor.lightGrey,
                        txtColor: Colors.black,
                        onTap: () {
                          setState(() {
                            inputValue += "3";
                          });
                        },
                      ),
                      BtnScreen(
                        title: "+",
                        btnColor: CalcColor.yellow,
                        txtColor: Colors.white,
                        onTap: () {
                          setState(() {
                            List division = [inputValue, "+"];
                            inputValue = division.join();
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            inputValue += "0";
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: CalcColor.lightGrey,
                          ),
                          height: 70,
                          width: 175,
                          child: const Center(
                            child: Text("0",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                      BtnScreen(
                        title: ".",
                        btnColor: CalcColor.lightGrey,
                        txtColor: Colors.black,
                        onTap: () {
                          setState(() {
                            inputValue += ".";
                          });
                        },
                      ),
                      BtnScreen(
                        title: "=",
                        btnColor: CalcColor.yellow,
                        txtColor: Colors.white,
                        onTap: () {
                          setState(() {
                            equalButton();
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
