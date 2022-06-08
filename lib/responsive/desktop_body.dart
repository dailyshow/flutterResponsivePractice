import 'package:flutter/material.dart';
import 'package:responsive_practice/responsive/dimension.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[200],
      appBar: AppBar(
        title: Text('desktop'),
        backgroundColor: Colors.orange,
      ),
      body: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Container(
                      height: 250,
                      color: Colors.orange[400],
                      child: Center(
                          child: Text(
                            '${media(context)}',
                            style: TextStyle(
                                fontSize: 30.0
                            ),
                          )
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: ListView.builder(
                        itemCount: 8,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              color: Colors.orange[300],
                              height: 120,
                            ),
                          );
                        }
                    )
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 200,
              color: Colors.orange[300],
            ),
          )
        ],
      ),
    );
  }
}
