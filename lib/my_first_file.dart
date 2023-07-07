import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:internship_bsu/second_page.dart';

class MyFirstPage extends StatelessWidget {
  const MyFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Internship APP"),
          elevation: 20.0,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20.0),
              const CircleAvatar(
                radius: 40.0,
                // child: Text("BSU"),
                backgroundImage: AssetImage("images/q1d.jpeg"),
              ),
              const SizedBox(height: 10.0),
              const Text(
                "Student of BSU",
                style: TextStyle(
                  color: Colors.pink,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return const SecondPage();
                            },
                          ),
                        );
                      },
                      child: const Text("second page"),
                    ),
                    const SizedBox(width: 10.0),
                    OutlinedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return const MyFirstPage();
                            },
                          ),
                        );
                      },
                      child: const Text("You are welcome"),
                    ),
                    const SizedBox(width: 10.0),
                    OutlinedButton(
                      onPressed: () {
                        if (kDebugMode) {
                          print("I was pressed");
                        }
                      },
                      child: const Text("It's a pressure"),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
