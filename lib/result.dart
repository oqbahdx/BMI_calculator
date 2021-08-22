import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  final bool gender;
  final double height;
  final int age;
  final int weight;
  final double bmi;

  const Result(
      {@required this.gender,
      @required this.height,
        @required this.age,
      @required this.weight,
      @required this.bmi});

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'Result',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Your Gender is : ${widget.gender ? 'Male' : 'Female'}',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Your Height is : ${widget.height.round()}',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Your Age is : ${widget.age}',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Your Weight is : ${widget.weight.round()}',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Your BMI is : ${widget.bmi.toStringAsFixed(2)}',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Result is ',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: (widget.bmi < 18.5
                      ? Colors.yellow
                      : widget.bmi > 18.5 && widget.bmi < 24.9
                          ? Colors.green
                          : widget.bmi > 24.9 && widget.bmi < 29.9
                              ? Colors.orange
                              : widget.bmi > 29.9
                                  ? Colors.red
                                  : Colors.grey),
                ),child: Center(
                child: Text(
                  (widget.bmi < 18.5
                      ? 'Underweight'
                      : widget.bmi > 18.5 && widget.bmi < 24.9
                      ? 'Normal weight'
                      : widget.bmi > 24.9 && widget.bmi < 29.9
                      ? 'Overweight'
                      : widget.bmi > 29.9
                      ? 'Obesity'
                      : '').toUpperCase()
                  ,style: TextStyle(
                  fontSize: 30,fontWeight: FontWeight.bold
                ),),
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
