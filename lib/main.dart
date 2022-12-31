import 'package:deneme/questions.dart';
import 'package:flutter/material.dart';
import 'consts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: like(),
      ),
    );
  }
}

class like extends StatefulWidget {
  const like({Key? key}) : super(key: key);

  @override
  State<like> createState() => _likeState();
}

class _likeState extends State<like> {
  List<Widget> iconlar = [];

  testveri test_1 = testveri();

  void klickt(bool element) {
    setState(() {
      test_1.sorubankasi[questionsIndex].soruyaniti == element
          ? iconlar.add(trueIcon)
          : iconlar.add(falseIcon);

      questionsIndex++;
      if (test_1.sorubankasi[questionsIndex].sorumetni ==
          test_1.sorubankasi.length) {
        return;
      }
      ;
    });
  }

  int questionsIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              child: Text(
                test_1.sorubankasi[questionsIndex].sorumetni,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Wrap(
            children: iconlar,
            spacing: 5,
          ),
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () {
                    klickt(false);
                  },
                  child: Container(
                    width: 175,
                    height: 75,
                    color: Colors.red,
                    child: Icon(
                      Icons.thumb_down,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: OutlinedButton(
                  onPressed: () {
                    klickt(true);
                  },
                  child: Container(
                    width: 175,
                    height: 75,
                    color: Colors.green,
                    child: Icon(
                      Icons.thumb_up,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
