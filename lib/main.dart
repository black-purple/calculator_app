import 'package:calculator_app/konstants.dart';
import 'package:calculator_app/widgets/calc_num_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:math_expressions/math_expressions.dart';

import 'widgets/calc_op_button.dart';

void main() => runApp(Calculator());

class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CalculatorHome(),
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        primaryColorDark: Color(0xFF23262F),
        primaryColorLight: Colors.white,
      ),
    );
  }
}

class CalculatorHome extends StatefulWidget {
  @override
  _CalculatorHomeState createState() => _CalculatorHomeState();
}

class _CalculatorHomeState extends State<CalculatorHome> {
  bool iconToggle = true;
  bool isDarkToggle = false;
  String result = '';
  String input = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkToggle
          ? Theme.of(context).primaryColorLight
          : Theme.of(context).primaryColorDark,
      appBar: AppBar(
        brightness: isDarkToggle ? Brightness.light : Brightness.dark,
        elevation: 0.0,
        backgroundColor: isDarkToggle
            ? Theme.of(context).primaryColorLight
            : Theme.of(context).primaryColorDark,
        title: Center(
          child: IconButton(
              icon: iconToggle
                  ? Icon(
                      Icons.light_mode,
                      color: Colors.amber,
                    )
                  : Icon(
                      Icons.dark_mode,
                      color: Color(0xFF8c7ae6),
                    ),
              onPressed: () {
                setState(() {
                  iconToggle = !iconToggle;
                  isDarkToggle = !isDarkToggle;
                });
              }),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 2 * (deviceHeight(context) / 100),
                    left: 5 * (deviceHeight(context) / 100),
                    right: 5 * (deviceHeight(context) / 100),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 2 * (deviceHeight(context) / 100),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          input,
                          style: TextStyle(
                            fontSize: 20,
                            color: isDarkToggle
                                ? Theme.of(context).primaryColorDark
                                : Theme.of(context).primaryColorLight,
                          ),
                        ),
                      ),
                      Center(
                        child: SizedBox(
                          height: 30,
                          width: 85 * (deviceWidth(context) / 100),
                          child: Divider(
                            color: isDarkToggle
                                ? Theme.of(context).primaryColorDark
                                : Theme.of(context).primaryColorLight,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 5,
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                result,
                                style: TextStyle(
                                  fontSize: 50,
                                  color: isDarkToggle
                                      ? Color(0xFF8c7ae6)
                                      : Color(0xBB8c7ae6),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                height: 40,
                                decoration: BoxDecoration(
                                  color: isDarkToggle
                                      ? Colors.grey[350]
                                      : Color(0xAAABABAB),
                                  shape: BoxShape.circle,
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      result = '';
                                      input = '';
                                    });
                                  },
                                  icon: Icon(
                                    Icons.clear,
                                    color: isDarkToggle
                                        ? Theme.of(context).primaryColorDark
                                        : Theme.of(context).primaryColorLight,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )),
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    flex: 8,
                    child: GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3),
                      children: [
                        CalcNumButton(
                            text: '7',
                            color: isDarkToggle
                                ? Theme.of(context).primaryColorDark
                                : Theme.of(context).primaryColorLight,
                            onTap: () {
                              setState(() {
                                input = input + '7';
                              });
                            }),
                        CalcNumButton(
                            text: '8',
                            color: isDarkToggle
                                ? Theme.of(context).primaryColorDark
                                : Theme.of(context).primaryColorLight,
                            onTap: () {
                              setState(() {
                                input = input + '8';
                              });
                            }),
                        CalcNumButton(
                            text: '9',
                            color: isDarkToggle
                                ? Theme.of(context).primaryColorDark
                                : Theme.of(context).primaryColorLight,
                            onTap: () {
                              setState(() {
                                input = input + '9';
                              });
                            }),
                        CalcNumButton(
                            text: '4',
                            color: isDarkToggle
                                ? Theme.of(context).primaryColorDark
                                : Theme.of(context).primaryColorLight,
                            onTap: () {
                              setState(() {
                                input = input + '4';
                              });
                            }),
                        CalcNumButton(
                            text: '5',
                            color: isDarkToggle
                                ? Theme.of(context).primaryColorDark
                                : Theme.of(context).primaryColorLight,
                            onTap: () {
                              setState(() {
                                input = input + '5';
                              });
                            }),
                        CalcNumButton(
                            text: '6',
                            color: isDarkToggle
                                ? Theme.of(context).primaryColorDark
                                : Theme.of(context).primaryColorLight,
                            onTap: () {
                              setState(() {
                                input = input + '6';
                              });
                            }),
                        CalcNumButton(
                            text: '1',
                            color: isDarkToggle
                                ? Theme.of(context).primaryColorDark
                                : Theme.of(context).primaryColorLight,
                            onTap: () {
                              setState(() {
                                input = input + '1';
                              });
                            }),
                        CalcNumButton(
                            text: '2',
                            color: isDarkToggle
                                ? Theme.of(context).primaryColorDark
                                : Theme.of(context).primaryColorLight,
                            onTap: () {
                              setState(() {
                                input = input + '2';
                              });
                            }),
                        CalcNumButton(
                            text: '3',
                            color: isDarkToggle
                                ? Theme.of(context).primaryColorDark
                                : Theme.of(context).primaryColorLight,
                            onTap: () {
                              setState(() {
                                input = input + '3';
                              });
                            }),
                        CalcNumButton(
                            text: '.',
                            color: isDarkToggle
                                ? Theme.of(context).primaryColorDark
                                : Theme.of(context).primaryColorLight,
                            onTap: () {
                              setState(() {
                                input = input + '.';
                              });
                            }),
                        CalcNumButton(
                            text: '0',
                            color: isDarkToggle
                                ? Theme.of(context).primaryColorDark
                                : Theme.of(context).primaryColorLight,
                            onTap: () {
                              setState(() {
                                input = input + '0';
                              });
                            }),
                        CalcOpButton(
                            color: Colors.redAccent,
                            icon: Icons.arrow_back_ios_new_sharp,
                            onTap: () {
                              setState(() {
                                input = input.substring(0, input.length - 1);
                              });
                            },
                            iconSize: 25),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        color: isDarkToggle
                            ? Colors.grey[350]!.withOpacity(0.5)
                            : Color(0xBB8c7ae6),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: EdgeInsets.only(
                        left: 1 * (deviceWidth(context) / 100),
                        right: 1 * (deviceWidth(context) / 100),
                        bottom: 20 * (deviceWidth(context) / 100),
                        top: 9 * (deviceWidth(context) / 100),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: CalcOpButton(
                              color: isDarkToggle
                                  ? Color(0xBB8c7ae6)
                                  : Theme.of(context).primaryColorLight,
                              icon: FontAwesomeIcons.divide,
                              onTap: () {
                                setState(() {
                                  input = input + '/';
                                });
                              },
                              iconSize: 25,
                            ),
                          ),
                          Expanded(
                            child: CalcOpButton(
                              color: isDarkToggle
                                  ? Color(0xBB8c7ae6)
                                  : Theme.of(context).primaryColorLight,
                              icon: FontAwesomeIcons.times,
                              onTap: () {
                                setState(() {
                                  input = input + 'x';
                                });
                              },
                              iconSize: 25,
                            ),
                          ),
                          Expanded(
                            child: CalcOpButton(
                              color: isDarkToggle
                                  ? Color(0xBB8c7ae6)
                                  : Theme.of(context).primaryColorLight,
                              icon: FontAwesomeIcons.minus,
                              onTap: () {
                                setState(() {
                                  input = input + '-';
                                });
                              },
                              iconSize: 25,
                            ),
                          ),
                          Expanded(
                            child: CalcOpButton(
                              color: isDarkToggle
                                  ? Color(0xBB8c7ae6)
                                  : Theme.of(context).primaryColorLight,
                              icon: FontAwesomeIcons.plus,
                              onTap: () {
                                setState(() {
                                  input = input + '+';
                                });
                              },
                              iconSize: 25,
                            ),
                          ),
                          SizedBox(
                            height: 2 * (deviceHeight(context) / 100),
                          ),
                          Expanded(
                            child: CalcOpButton(
                              color: isDarkToggle
                                  ? Color(0xBB8c7ae6)
                                  : Theme.of(context).primaryColorLight,
                              icon: FontAwesomeIcons.equals,
                              onTap: () {
                                setState(() {
                                  String finalResult = input;
                                  finalResult =
                                      finalResult.replaceAll('x', '*');
                                  Parser p = Parser();
                                  Expression exp = p.parse(finalResult);
                                  ContextModel cm = ContextModel();
                                  double eval =
                                      exp.evaluate(EvaluationType.REAL, cm);
                                  result = eval.toString();
                                });
                              },
                              iconSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
