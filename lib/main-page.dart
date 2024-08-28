import 'package:bmi_calculater/styles.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea (
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: const Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Icon(Icons.male,size: 150, ),
                        Text("Male"),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Icon(Icons.female, size: 150,),
                        Text("Female"),
                      ],
                    ),
                  )
                ],
                
              ),
              SizedBox(height: 50,),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text("Hight"),
                        Text("176",
                        style: kInputLableColor
                        ),
                        Row(
                          children: [
                            FloatingActionButton(
                            onPressed: null,
                            child: Icon(Icons.remove, size: 30,),
                            ),
                            SizedBox(width: 20,),
                            FloatingActionButton(
                            onPressed: null,
                            child: Icon(Icons.add, size: 30,),)
                            ],
                        ),
                        
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text("wight"),
                        Text("56",
                        style: kInputLableColor,
                        ),
                        Row(
                          children: [
                            FloatingActionButton(
                            onPressed: null,
                            child: Icon(Icons.remove, size: 30,),
                            ),
                            SizedBox(width: 20,),
                            FloatingActionButton(
                            onPressed: null,
                            child: Icon(Icons.add, size: 30,),)
                            ],
                        ),
                      ],
                    ),
                    
                  )
                ],
              ),
              SizedBox(height: 50,),
              Column(
                  children: [
                  Text("BMI"),
                  Text("22.22",
                  style: kInputLableColor),
                  ]
    ),
  ],
),

        ),
      ),
    );
  }
}