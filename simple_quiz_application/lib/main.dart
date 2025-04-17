import 'package:simple_quiz_application/exports.dart';

void main() => runApp(
  ChangeNotifierProvider(create: (_) => ThemeNotifier(), child: const MyApp()),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'Simple Quiz Application';
  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        brightness: Brightness.light,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromRGBO(0, 112, 116, 1),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(9),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            backgroundColor: const Color.fromRGBO(0, 112, 116, 1),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
        dialogTheme: DialogTheme(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromRGBO(0, 112, 116, 1),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            backgroundColor: const Color.fromRGBO(0, 112, 116, 1),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
        dialogTheme: DialogTheme(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      themeMode: themeNotifier.currentTheme,
      home: const MainPage(),
      routes: {
        '/home': (context) => const Home(),
        '/quiz': (context) => const Quiz(),
        '/htmlQuiz': (context) => const HtmlQuiz(),
        '/htmlBeginnerQuiz': (context) => const HtmlBeginnerQuiz(),
        '/htmlIntermediateQuiz': (context) => const HtmlIntermediateQuiz(),
        '/htmlDifficultQuiz': (context) => const HtmlDifficultQuiz(),
        '/javaQuiz': (context) => const JavaQuiz(),
        '/javaBeginnerQuiz': (context) => const JavaBeginnerQuiz(),
        '/javaIntermediateQuiz': (context) => const JavaIntermediateQuiz(),
        '/javaDifficultQuiz': (context) => const JavaDifficultQuiz(),
        '/settings': (context) => const Settings(),
      },
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  final List<Widget> _screens = const [Home(), Quiz(), Settings()];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Simple Quiz Application',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        backgroundColor: const Color.fromRGBO(0, 112, 116, 1),
        foregroundColor: Colors.white,
        leading: Icon(Icons.quiz),
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color.fromRGBO(0, 112, 116, 1),
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.question_answer),
            label: 'Quiz',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
