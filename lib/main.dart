import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
    double heigh = 200;
  double wid = 200;
bool item=false;
double rotate=3.14;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: AnimatedContainer(
                    duration: Duration(seconds: 3),
                    child: Text(" saasasas"),
                    height: heigh,
                    width: wid,
                    color: Colors.red,
                  ),
                ),
              AnimatedContainer(
                duration: Duration(seconds: 3),

                child: Transform.rotate(
                    angle: rotate,
                    child: IconButton(
                        onPressed: () {
                          setState(() {
                            if(item==false){
                              heigh = 300;
                              wid=300;
                              rotate=rotate/2;

                            }
                            else{

                              heigh = 200;
                              wid=200;

                            }



                            item=!item;
                          });
                        },
                        icon: Icon(Icons.arrow_back_sharp)

                    ),
                  ),
              )



              ],
            ),
          ),
        ),
      ),
    );
  }
}
