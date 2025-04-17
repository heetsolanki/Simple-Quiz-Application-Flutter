import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_quiz_application/screens/quiz_screen.dart';
import 'package:simple_quiz_application/screens/theme_provider.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  SettingsState createState() => SettingsState();
}

class SettingsState extends State<Settings> {
  static const WidgetStateProperty<Icon> _thumbIcon =
      WidgetStateProperty<Icon>.fromMap(<WidgetStatesConstraint, Icon>{
        WidgetState.selected: Icon(Icons.nights_stay),
        WidgetState.any: Icon(Icons.sunny),
      });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            const Text(
              'Settings',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Dark Mode',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Switch(
                        activeColor: const Color.fromRGBO(0, 112, 116, 1),
                        thumbIcon: _thumbIcon,
                        value: Provider.of<ThemeNotifier>(context).isDarkMode,
                        onChanged: (_) {
                          Provider.of<ThemeNotifier>(
                            context,
                            listen: false,
                          ).toggleTheme();
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // const SizedBox(height: 425),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Center(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.redAccent,
                        backgroundColor: Color.fromRGBO(0, 0, 0, 0),
                      ),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text(
                                'Reset all quizzes',
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                              content: Text(
                                'Are you sure you want to reset all quizzes?',
                              ),
                              actions: [
                                TextButton(
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.only(
                                      top: 15,
                                      bottom: 15,
                                    ),
                                    foregroundColor: const Color.fromRGBO(
                                      0,
                                      112,
                                      116,
                                      1,
                                    ),
                                    backgroundColor: Color.fromRGBO(0, 0, 0, 0),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('Cancel'),
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(
                                    backgroundColor: Color.fromRGBO(0, 0, 0, 0),
                                    foregroundColor: Colors.redAccent,
                                    padding: EdgeInsets.only(
                                      top: 15,
                                      bottom: 15,
                                    ),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      quizAttempts.forEach((key, value) {
                                        quizAttempts[key] = false;
                                      });
                                      Navigator.pop(context);
                                    });
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        duration: Duration(seconds: 1),
                                        content: Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            'Reset Successful!',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                  child: Text('Reset'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Text(
                        'Reset all quiz marks',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
