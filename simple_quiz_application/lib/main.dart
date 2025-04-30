import 'exports.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: const MyApp(),
    ),
  );
}

int currentIndex = 0;

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'Simple Quiz Application';
  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        fontFamily: 'Poppins',
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
        fontFamily: 'Poppins',
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
        // Main Screens
        '/home': (context) => const Home(),
        '/quiz': (context) => const Quiz(),
        '/settings': (context) => const Settings(),
        '/marks': (context) => const Marks(),
        // CSharp Screens
        '/csharpQuiz': (context) => const CSharpQuiz(),
        '/csharpBeginnerQuiz': (context) => const CSharpBeginnerQuiz(),
        '/csharpIntermediateQuiz': (context) => const CSharpIntermediateQuiz(),
        '/csharpDifficultQuiz': (context) => const CSharpDifficultQuiz(),
        // Html Screens
        '/htmlQuiz': (context) => const HtmlQuiz(),
        '/htmlBeginnerQuiz': (context) => const HtmlBeginnerQuiz(),
        '/htmlIntermediateQuiz': (context) => const HtmlIntermediateQuiz(),
        '/htmlDifficultQuiz': (context) => const HtmlDifficultQuiz(),
        // Java Screens
        '/javaQuiz': (context) => const JavaQuiz(),
        '/javaBeginnerQuiz': (context) => const JavaBeginnerQuiz(),
        '/javaIntermediateQuiz': (context) => const JavaIntermediateQuiz(),
        '/javaDifficultQuiz': (context) => const JavaDifficultQuiz(),
        // JavaScript Screens
        '/javascriptQuiz': (context) => const JavaScriptQuiz(),
        '/javascriptBeginnerQuiz': (context) => const JavaScriptBeginnerQuiz(),
        '/javascriptIntermediateQuiz':
            (context) => const JavaScriptIntermediateQuiz(),
        '/javascriptDifficultQuiz':
            (context) => const JavaScriptDifficultQuiz(),
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
  final List<Widget> _screens = const [Home(), Quiz(), Marks(), Settings()];

  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BrainByte',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        backgroundColor: const Color.fromRGBO(0, 112, 116, 1),
        foregroundColor: Colors.white,
        // leading: Icon(Icons.quiz),
      ),
      drawer: Drawer(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
        ),
        width: 300,
        elevation: 20.0,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 130,
              child: const DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 112, 116, 1),
                ),
                child: Text(
                  'BrainByte',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              selectedColor: const Color.fromRGBO(0, 112, 116, 1),
              title: const Text(
                'Home',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              selected: currentIndex == 0,
              onTap: () {
                _onItemTapped(0);
                Navigator.pop(context);
              },
            ),
            SizedBox(height: 7),
            ListTile(
              leading: Icon(Icons.quiz),
              selectedColor: const Color.fromRGBO(0, 112, 116, 1),
              title: const Text(
                'Quiz',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              selected: currentIndex == 1,
              onTap: () {
                _onItemTapped(1);
                Navigator.pop(context);
              },
            ),
            SizedBox(height: 7),
            ListTile(
              leading: Icon(Icons.leaderboard),
              selectedColor: const Color.fromRGBO(0, 112, 116, 1),
              title: const Text(
                'Marks',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              selected: currentIndex == 2,
              onTap: () {
                _onItemTapped(2);
                Navigator.pop(context);
              },
            ),
            SizedBox(height: 7),
            ListTile(
              leading: Icon(Icons.settings),
              selectedColor: const Color.fromRGBO(0, 112, 116, 1),
              title: const Text(
                'Settings',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              selected: currentIndex == 3,
              onTap: () {
                _onItemTapped(3);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: _screens[currentIndex],
    );
  }
}
