import 'package:simple_quiz_application/exports.dart';
import 'package:simple_quiz_application/screens/marks.dart';

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
        cardTheme: CardTheme(
          color: Colors.white,
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
        cardTheme: CardTheme(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
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
        '/marks': (context) => const Marks(),
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
  final List<Widget> _screens = const [Home(), Quiz(), Marks(), Settings()];

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
        // leading: Icon(Icons.quiz),
      ),
      drawer: Drawer(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        width: 300,
        elevation: 20.0,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Color.fromRGBO(0, 112, 116, 1)),
              child: Text(
                'Simple Quiz Application',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              title: const Text('Home'),
              selected: _currentIndex == 0,
              onTap: () {
                _onItemTapped(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Quiz'),
              selected: _currentIndex == 1,
              onTap: () {
                _onItemTapped(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Marks'),
              selected: _currentIndex == 2,
              onTap: () {
                _onItemTapped(2);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Settings'),
              selected: _currentIndex == 3,
              onTap: () {
                _onItemTapped(3);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: _screens[_currentIndex],
      // bottomNavigationBar: BottomNavigationBar(
      //   iconSize: 20,
      //   unselectedItemColor: Colors.grey,
      //   selectedItemColor: const Color.fromRGBO(0, 112, 116, 1),
      //   currentIndex: _currentIndex,
      //   onTap: _onItemTapped,
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.question_answer),
      //       label: 'Quiz',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.leaderboard),
      //       label: 'Marks',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.settings),
      //       label: 'Settings',
      //     ),
      //   ],
      // ),
    );
  }
}
