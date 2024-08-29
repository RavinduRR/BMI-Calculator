import 'package:bmi_calculater/styles.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int height = 176;
  int weight = 56;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Icon(Icons.male, size: 150),
                        Text("Male"),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Icon(Icons.female, size: 150),
                        Text("Female"),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 50),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Text("Height"),
                        Text(
                          "$height cm",
                          style: kInputLableColor,
                        ),
                        Row(
                          children: [
                            FloatingActionButton(
                              onPressed: onHeightMinus,
                              child: const Icon(Icons.remove, size: 30),
                            ),
                            const SizedBox(width: 20),
                            FloatingActionButton(
                              onPressed: onHeightAdd,
                              child: const Icon(Icons.add, size: 30),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Text("Weight"),
                        Text(
                          "$weight kg",
                          style: kInputLableColor,
                        ),
                        Row(
                          children: [
                            FloatingActionButton(
                              onPressed: onWeightMinus,
                              child: const Icon(Icons.remove, size: 30),
                            ),
                            const SizedBox(width: 20),
                            FloatingActionButton(
                              onPressed: onWeightAdd,
                              child: const Icon(Icons.add, size: 30),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 50),
              Column(
                children: [
                  const Text("BMI"),
                  Text(
                    (weight / ((height / 100) * (height / 100)))
                        .toStringAsFixed(2),
                    style: kInputLableColor,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onHeightMinus() {
    setState(() {
      height--;
    });
  }

  void onHeightAdd() {
    setState(() {
      height++;
    });
  }

  void onWeightMinus() {
    setState(() {
      weight--;
    });
  }

  void onWeightAdd() {
    setState(() {
      weight++;
    });
  }
}
