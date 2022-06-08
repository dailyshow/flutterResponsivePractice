import 'package:flutter/material.dart';
import 'package:responsive_practice/responsive/dimension.dart';

class TabletBody extends StatelessWidget {
  const TabletBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      appBar: AppBar(
        title: Text('tablet'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                height: 250,
                color: Colors.green[400],
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
                        color: Colors.green[300],
                        height: 120,
                      ),
                    );
                  }
              )
          )
        ],
      ),
    );
  }
}
