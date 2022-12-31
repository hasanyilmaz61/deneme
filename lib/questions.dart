import 'class.dart';

class testveri {
  List<Sorularim> sorubankasi = [
    Sorularim(
      sorumetni: "Titanic is the largest ship ever",
      soruyaniti: false,
    ),
    Sorularim(
      sorumetni:
          "The number of chickens in the world is more than the number of people",
      soruyaniti: true,
    ),
    Sorularim(
      sorumetni: "The life span of butterflies is one day",
      soruyaniti: false,
    ),
    Sorularim(
      sorumetni: "The world is flat",
      soruyaniti: false,
    ),
    Sorularim(
        sorumetni: "Fatih Sultan Mehmet never ate potatoes", soruyaniti: true),
    Sorularim(sorumetni: "congrats all questions are over", soruyaniti: true),
  ];

  void sonsoru() {
    if (test_1.sorubankasi[questionsIndex].sorumetni ==
        test_1.sorubankasi.length)



  }
}


