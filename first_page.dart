import 'package:flutter/material.dart';


class  FirstPage extends StatelessWidget {
  final List<String> entries = <String>['[pain]', '[aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa]', '[怪獣の花唄]'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('凡才プログラマーKBOY',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.black,
        actions: [
          Icon(Icons.ondemand_video_outlined),
          SizedBox(width: 24),
          Icon(Icons.search),
          SizedBox(width: 24),
          Icon(Icons.menu),
          SizedBox(width: 24),
        ],
      ),
      body: Container(
        color: Colors.black,
        child: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: entries.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 100,
                padding: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Image.network(
                      'https://i.ytimg.com/vi/i8pHCgMDBM4/maxresdefault.jpg',
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${entries[index]}',
                            style: TextStyle(
                              color: Colors.white,
                              height: 1.3,
                              fontSize: 16,
                            ),
                            maxLines: 3,
                          ),
                          Text(
                            '138万回再生　5日前',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }
        ),
      ),
    );
  }
}
