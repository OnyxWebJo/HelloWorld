import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(JordanTourismApp());

class JordanTourismApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'سياحة الأردن',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        scaffoldBackgroundColor: Color(0xFFF5F5DC), // لون كريمي هادئ
      ),
      home: MainScreen(),
    );
  }
}

// نموذج البيانات لكل موقع
class Site {
  final String name;
  final String image;
  final String videoUrl;
  final String description;
  final List<Map<String, dynamic>> quiz;

  Site(
      {required this.name,
      required this.image,
      required this.videoUrl,
      required this.description,
      required this.quiz});
}

class MainScreen extends StatelessWidget {
  final List<Site> sites = [
    Site(
      name: "البتراء",
      image: "assets/images/petra.jpg",
      videoUrl:
          "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4", // استبدال برابط فيديو البتراء
      description:
          "المدينة الوردية، منحوتة في الصخر من قبل الأنباط وتعد من عجائب الدنيا السبع.",
      quiz: [
        {
          'q': 'من هم بناة مدينة البتراء؟',
          'o': ['الرومان', 'الأنباط', 'اليونان'],
          'a': 1
        },
        {
          'q': 'ما هو الممر الضيق الذي يؤدي للبتراء؟',
          'o': ['السيق', 'الخندق', 'النفق'],
          'a': 0
        },
        {
          'q': 'في أي عام أصبحت من عجائب الدنيا؟',
          'o': ['2000', '2007', '2010'],
          'a': 1
        },
        {
          'q': 'ما هو أشهر معالمها؟',
          'o': ['الدير', 'الخزنة', 'كلاهما'],
          'a': 2
        },
        {
          'q': 'في أي محافظة تقع البتراء؟',
          'o': ['الكرك', 'معان', 'الطفيلة'],
          'a': 1
        },
      ],
    ),
    Site(
      name: "جرش",
      image: "assets/images/jerash.jpg",
      videoUrl:
          "https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4",
      description:
          "مدينة الألف عمود، وهي واحدة من مدن الديكابولس العشر وأفضلها حفظاً.",
      quiz: [
        {
          'q': 'بماذا تلقب مدينة جرش؟',
          'o': ['مدينة الألف عمود', 'وادي القمر', 'الوردية'],
          'a': 0
        },
        {
          'q': 'ما هو الاسم القديم لجرش؟',
          'o': ['فيلادلفيا', 'جراسا', 'أرابيلا'],
          'a': 1
        },
        {
          'q': 'أي حضارة اشتهرت ببناء جرش؟',
          'o': ['الإسلامية', 'الرومانية', 'النبطية'],
          'a': 1
        },
        {
          'q': 'ما هو المهرجان السنوي المشهور فيها؟',
          'o': ['مهرجان جرش', 'مهرجان عمان', 'مهرجان الفحيص'],
          'a': 0
        },
        {
          'q': 'أين تقع جرش بالنسبة لعمان؟',
          'o': ['الجنوب', 'الشمال', 'الغرب'],
          'a': 1
        },
      ],
    ),
    Site(
      name: "وادي رم",
      image: "assets/images/wadirum.jpg",
      videoUrl:
          "https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4",
      description:
          "صحراء سياحية في جنوب الاردن , وهي مشهورة بجبالها الصخرية و رحلات التخييم فيها .",
      quiz: [
        {
          'q': 'اين يقع وادي رم ؟',
          'o': ['جنوب الاردن', 'شمال الاردن ', 'شرق الاردن'],
          'a': 0
        },
        {
          'q': 'بماذا يعرف وادي رم ؟',
          'o': ['البحيرات', 'الصحراء الخلابة', 'الغابات الكثيفة'],
          'a': 1
        },
        {
          'q': 'ما اللقب الشائع لوادي رم ؟',
          'o': ['وادي الورد', 'وادي القمر', 'وادي الذهب'],
          'a': 1
        },
        {
          'q': 'ما اشهر نشاط سياحي في وادي رم وهو الاكثر شهرة ؟',
          'o': ['الغوص', 'التزلج على الجليد', 'رحلات الجيب و التخييم الصحراوي'],
          'a': 0
        },
        {
          'q': 'ادرج وادي رم على قائمة التراث العالمي لليونسكو في عام :',
          'o': ['2020', '2011', '2005'],
          'a': 1
        },
      ],
    ),
    Site(
      name: "المدرج الروماني",
      image: "assets/images/theater.jpg",
      videoUrl:
          "https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4",
      description:
          "مسرح اثري في عمان بني في العصر الروماني للعروض و الفعاليات .",
      quiz: [
        {
          'q': 'اين يقع المدرج الروماني ؟',
          'o': ['الزرقاء', 'العقبة', 'عمان'],
          'a': 0
        },
        {
          'q': 'في اي فترة تم بناء المدرج الروماني ',
          'o': ['العهد المملوكي', 'العهد الروماني', 'العهد الاموي'],
          'a': 1
        },
        {
          'q': 'تقريبا كم يتسع المدرج الروماني من المتفرجين ؟',
          'o': ['5000', '6000', '1000'],
          'a': 1
        },
        {
          'q': 'في عهد اي امبراطور روماني تم بناء المدرج الروماني؟',
          'o': ['نيرون', 'قسطنطين الكبير', 'هدريان'],
          'a': 0
        },
        {
          'q': ' ما الاستخدام الاساسي من المدرج الروماني قديما ؟ ',
          'o': ['السكن', 'الاجتماعات السياسية ', 'العروض و المسرحيات'],
          'a': 0
        },
      ],
    ),
    Site(
      name: "قلعة عمان ",
      image: "assets/images/citadel.jpg",
      videoUrl:
          "https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4",
      description: "موقع اثري فوق احد جبال عمان ويضم آثار رومانية و اموية .",
      quiz: [
        {
          'q': 'اين تقع قلعة عمان ؟',
          'o': ['معان', 'العقبة ', 'عمان على احد جبالها'],
          'a': 0
        },
        {
          'q': 'الي ان من العصور التاريخية تعود آثار القلعة ؟',
          'o': [
            'الروماني فقط',
            'العثماني فقط',
            'الروماني و البيزنطي و الأموي '
          ],
          'a': 0
        },
        {
          'q': 'ما اسم المعبد الروماني الموجود في القلعة ؟',
          'o': ['معبد أبولو', 'معبد زيوس', 'معبد هرقل'],
          'a': 0
        },
        {
          'q': 'ما اسم القصر الأموي الموجود في القلعة ؟',
          'o': ['قصر رغدان', 'القصر الأموي', 'قصر المشتى '],
          'a': 1
        },
        {
          'q': 'ماذا يمكن للزوار مشاهدة من اعلى القلعة ؟',
          'o': ['عمان كاملة', 'البحر الميت', 'فلسطين'],
          'a': 2
        },
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("اكتشف المواقع الأثرية في الأردن")),
      body: ListView.builder(
        itemCount: sites.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            elevation: 5,
            child: ListTile(
              contentPadding: EdgeInsets.all(10),
              leading: Image.asset(sites[index].image,
                  width: 80, fit: BoxFit.cover),
              title: Text(sites[index].name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              subtitle: Text("اضغط لعرض التفاصيل والاختبار"),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (c) => SiteDetailsScreen(site: sites[index]))),
            ),
          );
        },
      ),
    );
  }
}

class SiteDetailsScreen extends StatefulWidget {
  final Site site;
  SiteDetailsScreen({required this.site});

  @override
  _SiteDetailsScreenState createState() => _SiteDetailsScreenState();
}

class _SiteDetailsScreenState extends State<SiteDetailsScreen> {
  late VideoPlayerController _videoController;
  final AudioPlayer _audioPlayer = AudioPlayer();
  double _rating = 0;

  @override
  void initState() {
    super.initState();
    _videoController = VideoPlayerController.network(widget.site.videoUrl)
      ..initialize().then((_) => setState(() {}));
  }

  void _submitRating() async {
    String message;
    if (_rating == 5) {
      message = "شكراً لتقييمك الرائع! 🌟";
      _audioPlayer.play(AssetSource('sounds/success.mp3')); // استخدام المصدر الصحيح للملفات المحلية بدون انتظار
    } else if (_rating <= 2) {
      message = "نعتذر منك، سنعمل على تحسين خدماتنا.";
    } else {
      message = "شكراً لتقييمك!";
    }
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.site.name)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            if (_videoController.value.isInitialized)
              AspectRatio(
                  aspectRatio: _videoController.value.aspectRatio,
                  child: VideoPlayer(_videoController)),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              IconButton(
                  icon: Icon(_videoController.value.isPlaying
                      ? Icons.pause
                      : Icons.play_arrow),
                  onPressed: () => setState(() =>
                      _videoController.value.isPlaying
                          ? _videoController.pause()
                          : _videoController.play())),
            ]),
            Image.asset(widget.site.image,
                height: 200, width: double.infinity, fit: BoxFit.cover),
            Padding(
                padding: EdgeInsets.all(16),
                child: Text(widget.site.description,
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center)),
            Divider(),
            Text("قيم هذا الموقع الأثري:"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  5,
                  (index) => IconButton(
                        icon: Icon(
                            index < _rating ? Icons.star : Icons.star_border,
                            color: Colors.amber,
                            size: 40),
                        onPressed: () => setState(() => _rating = index + 1.0),
                      )),
            ),
            ElevatedButton(
                onPressed: _submitRating, child: Text("إرسال التقييم")),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15)),
              child: Text("ابدأ اختبار الموقع (5 أسئلة)",
                  style: TextStyle(color: Colors.white)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (c) => QuizScreen(quizData: widget.site.quiz))),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

class QuizScreen extends StatefulWidget {
  final List<Map<String, dynamic>> quizData;
  QuizScreen({required this.quizData});

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestion = 0;
  int score = 0;
  final AudioPlayer _quizPlayer = AudioPlayer();

  // تم إصلاح مشكلة عدم الانتقال للسؤال التالي عند الإجابة الصحيحة من خلال تحسين تشغيل الملفات الصوتية
  void _checkAnswer(int index) {
    if (index == widget.quizData[currentQuestion]['a']) {
      score++;
      _quizPlayer.play(AssetSource('sounds/correct.mp3')); // تشغيل الصوت بدون انتظار لضمان استمرار اللعبة
    }
    if (currentQuestion < 4) {
      setState(() => currentQuestion++);
    } else {
      _showResult();
    }
  }

  // تم تحديث منطق النتيجة: إذا كانت النتيجة 4 أو 5 يتم تشغيل صوت النجاح، وإذا كانت أقل يطلب من المستخدم المحاولة مرة أخرى ويعاد الاختبار
  void _showResult() {
    if (score >= 4) {
      _quizPlayer.play(AssetSource('sounds/success.mp3')); // تشغيل صوت النجاح عند الحصول على نتيجة عالية
      showDialog(
          context: context,
          builder: (c) => AlertDialog(
                  title: Text("أحسنت! النتيجة النهائية"),
                  content: Text("لقد حصلت على $score من 5. عمل رائع!"),
                  actions: [
                    TextButton(
                        onPressed: () =>
                            Navigator.popUntil(context, (r) => r.isFirst),
                        child: Text("العودة للرئيسية"))
                  ]));
    } else {
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (c) => AlertDialog(
                  title: Text("حاول مرة أخرى"),
                  content: Text("لقد حصلت على $score من 5. يجب أن تحصل على 4 إجابات صحيحة على الأقل للنجاح."),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(c);
                          setState(() {
                            currentQuestion = 0;
                            score = 0;
                          });
                        },
                        child: Text("إعادة الاختبار"))
                  ]));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("اختبار المعلومات")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text("السؤال ${currentQuestion + 1}/5",
                style: TextStyle(fontSize: 18, color: Colors.grey)),
            SizedBox(height: 20),
            Text(widget.quizData[currentQuestion]['q'],
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center),
            SizedBox(height: 40),
            ...List.generate(
                3,
                (i) => Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              child: Text(
                                  widget.quizData[currentQuestion]['o'][i]),
                              onPressed: () => _checkAnswer(i))),
                    )),
          ],
        ),
      ),
    );
  }
}
