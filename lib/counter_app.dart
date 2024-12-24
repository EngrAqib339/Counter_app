import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter_app',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: Colors.lightGreen,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 40),
              child: Text(
                'Result: $result',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.deepOrange,
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        result++;
                      });
                    },
                    icon: Icon(Icons.add),
                    iconSize: 30,
                    color: Colors.blueGrey,
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        if (result > 0) {
                          result--;
                        }
                      });
                    },
                    icon: Icon(Icons.remove),
                    iconSize: 30,
                    color: Colors.red,
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        result = 0;
                      });
                    },
                    icon: Icon(Icons.refresh),
                    iconSize: 30,
                    color: Colors.yellow,
                  ),
                ],
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 45),
              child: Text('AQIB Khan',
                style: TextStyle(fontSize: 35, color: Colors.black),
              ),
            ),
          ),
        ],
      ));
  }
  }
