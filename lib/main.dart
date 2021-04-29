import 'package:calculator_app/konstants.dart';
import 'package:flutter/material.dart';

void main() => runApp(Calculator());

class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CalculatorHome(),
      theme: ThemeData(
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
  bool isDarkToggle = true;
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
                      Icons.dark_mode,
                      color: Theme.of(context).primaryColorDark,
                    )
                  : Icon(
                      Icons.light_mode,
                      color: Theme.of(context).primaryColorLight,
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
                    top: 5 * (deviceHeight(context) / 100),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 2 * (deviceHeight(context) / 100),
                      ),
                      Text(
                        'test',
                        style: TextStyle(
                          color: isDarkToggle
                              ? Theme.of(context).primaryColorDark
                              : Theme.of(context).primaryColorLight,
                        ),
                      ),
                      Center(
                        child: SizedBox(
                          height: 40,
                          width: 85 * (deviceWidth(context) / 100),
                          child: Divider(
                            color: isDarkToggle
                                ? Theme.of(context).primaryColorDark
                                : Theme.of(context).primaryColorLight,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'test',
                          style: TextStyle(
                            color: isDarkToggle
                                ? Theme.of(context).primaryColorDark
                                : Theme.of(context).primaryColorLight,
                          ),
                        ),
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
            ),
          ),
        ],
      ),
    );
  }
}
