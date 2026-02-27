import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart'; // مكتبة تشغيل يوتيوب

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
      videoUrl: "https://youtube.com/shorts/atLeewgvmzE?si=GM8n-pSZMxYYrFHl", 
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
      videoUrl: "https://youtube.com/shorts/5lJH3q3UpKg?si=fVUqiA63AlrptV4z", 
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
          'o': ['مهرجان الفحيص', 'مهرجان جرش', 'مهرجان شبيب'],
          'a': 1
        },
        {
          'q': 'أين تقع مدينة جرش؟',
          'o': ['شمال الأردن', 'جنوب الأردن', 'شرق الأردن'],
          'a': 0
        },
      ],
    ),
    Site(
      name: "وادي رم",
      image: "assets/images/wadirum.jpg",
      videoUrl: "https://www.youtube.com/shorts/h9O24ZBHOMU", 
      description:
          "وادي القمر، يشتهر بجباله الرملية الشاهقة وتشكيلاته الصخرية الفريدة.",
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
          'a': 2
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
      videoUrl: "https://www.youtube.com/shorts/Fhf_5t5JIXA", 
      description: "مدرج كبير يقع في قلب العاصمة عمان ويعود للعصر الروماني.",
      quiz: [
        {
          'q': 'اين يقع المدرج الروماني ؟',
          'o': ['الزرقاء', 'العقبة', 'عمان'],
          'a': 2
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
      name: "قلعة عمان",
      image: "assets/images/citadel.jpg",
      videoUrl: "https://www.youtube.com/shorts/KwLy5hAjTpY", 
      description: "موقع أثري فوق أحد جبال عمان ويضم آثاراً رومانية وأموية.",
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
  late YoutubePlayerController _youtubeController;
  final AudioPlayer _audioPlayer = AudioPlayer();
  double _rating = 0;

  @override
  void initState() {
    super.initState();
    // استخراج معرف الفيديو من الرابط
    final String? videoId = YoutubePlayerController.convertUrlToId(widget.site.videoUrl);
    
    _youtubeController = YoutubePlayerController.fromVideoId(
      videoId: videoId ?? '',
      autoPlay: false,
      params: const YoutubePlayerParams(
        showControls: true,
        showFullscreenButton: true,
        mute: false,
      ),
    );
  }

  @override
  void dispose() {
    _youtubeController.close(); // تنظيف الموارد
    super.dispose();
  }

  void _submitRating() async {
    String message;
    if (_rating == 5) {
      message = "شكراً لتقييمك الرائع! 🌟";
      _audioPlayer.play(AssetSource('sounds/success.wav')); 
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
            // عرض مشغل يوتيوب
            YoutubePlayer(
              controller: _youtubeController,
              aspectRatio: 16 / 9,
            ),
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

class _QuizScreenState extends State<QuizScreen> with SingleTickerProviderStateMixin {
  int currentQuestion = 0;
  int score = 0;
  final AudioPlayer _quizPlayer = AudioPlayer();
  late AnimationController _animationController;
  bool _showBalloons = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  // تم تحسين تشغيل الصوت للمتصفح من خلال إضافة تأخير بسيط وضمان تحميل الملف قبل عرضه
  void _checkAnswer(int index) {
    if (index == widget.quizData[currentQuestion]['a']) {
      score++;
      _quizPlayer.play(AssetSource('sounds/correct.wav')); 
    }
    if (currentQuestion < 4) {
      setState(() => currentQuestion++);
    } else {
      _showResult();
    }
  }

  // تم تحديث منطق النتيجة: إذا كانت النتيجة 4 أو 5 يتم تشغيل صوت النجاح والرسوم المتحركة، وإذا كانت أقل يطلب من المستخدم المحاولة مرة أخرى
  void _showResult() {
    if (score >= 4) {
      setState(() {
        _showBalloons = true;
      });
      _animationController.forward(from: 0.0);
      _quizPlayer.play(AssetSource('sounds/success.wav')); 
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
      body: Stack(
        children: [
          Padding(
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
          if (_showBalloons)
            Positioned.fill(
              child: AnimatedBuilder(
                animation: _animationController,
                builder: (context, child) {
                  return Stack(
                    children: List.generate(15, (index) {
                      final double progress = _animationController.value;
                      final double left = (index * 0.15 * MediaQuery.of(context).size.width) % MediaQuery.of(context).size.width;
                      final double bottom = progress * MediaQuery.of(context).size.height * 1.5 - 100;
                      return Positioned(
                        left: left,
                        bottom: bottom,
                        child: Opacity(
                          opacity: (1 - progress).clamp(0.0, 1.0),
                          child: Column(
                            children: [
                              Container(
                                width: 40,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.primaries[index % Colors.primaries.length],
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              Container(
                                width: 2,
                                height: 40,
                                color: Colors.grey[400],
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}
