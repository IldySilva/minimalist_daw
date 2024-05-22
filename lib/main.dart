import 'package:flutter/material.dart';
import 'package:mini_digital_audio_workstation/models/button_modle.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Mini DAW',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: SafeArea(
          child: Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const Text("M i n i  DAW",style: TextStyle(fontSize: 40,color: Colors.grey),),
                  GridView.builder(
                    shrinkWrap: true,
                    itemCount: buttons.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,childAspectRatio: 1.3),
                    itemBuilder: (BuildContext context, int index) {
                      var btn=buttons[index];
                     return  Card(
                        child: InkWell(
                          onTap: () {
                            btn.play();

                          },
                          child: Center(child: Text(btn.name)),
                        ),
                      );
                    },



                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
