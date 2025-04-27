import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../exports.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  SettingsState createState() => SettingsState();
}

class SettingsState extends State<Settings> {
  //Icons for Dark Mode Switch
  static const WidgetStateProperty<Icon> _thumbIcon =
      WidgetStateProperty<Icon>.fromMap(<WidgetStatesConstraint, Icon>{
        WidgetState.selected: Icon(Icons.nights_stay),
        WidgetState.any: Icon(Icons.sunny),
      });

  // GitHub URL
  _launchGitHubURL() async {
    var _url = Uri.parse('https://github.com/heetsolanki');
    if (!await launchUrl(_url, mode: LaunchMode.externalApplication)) {
      throw Exception("Could not launch $_url");
    }
  }

  // Instagram URL
  _launchInstagramURL() async {
    var _url = Uri.parse('https://instagram.com/heetsolankii');
    if (!await launchUrl(_url, mode: LaunchMode.externalApplication)) {
      throw Exception("Could not launch $_url");
    }
  }

  // LinkedIn URL
  _launchLinkedInURL() async {
    var _url = Uri.parse('www.linkedin.com/in/heetsolanki');
    if (!await launchUrl(_url, mode: LaunchMode.externalApplication)) {
      throw Exception("Could not launch $_url");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'About Developer',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
                IconButton(
                  tooltip: 'Click on the icon for more information',
                  icon: Icon(Icons.info_outline),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return SizedBox(
                          height: 200,
                          child: AlertDialog(
                            actionsAlignment: MainAxisAlignment.start,
                            title: Align(
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'About Developer',
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  CloseButton(color: Colors.redAccent),
                                ],
                              ),
                            ),
                            actions: [
                              Text(
                                'Myself Heet Solanki, an aspiring Flutter Developer. '
                                'Currently, pursuing BCA (Bachelor of Computer Applications) '
                                'from Somaiya Vidyavihar University.'
                                'I also know other languages like C, C#, Java, and Python.\n',
                              ),
                              Text(
                                'Other than coding I am interested in playing cricket, travelling, space, and Indian history.\n',
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Column(
                                  children: [
                                    Text(
                                      'Follow me on',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        IconButton(
                                          tooltip: 'GitHub',
                                          onPressed: _launchGitHubURL,
                                          icon: Icon(SimpleIcons.github),
                                          color: SimpleIconColors.github,
                                          iconSize: 28,
                                        ),
                                        SizedBox(width: 10),
                                        IconButton(
                                          tooltip: 'LinkedIn',
                                          onPressed: _launchLinkedInURL,
                                          icon: FaIcon(
                                            FontAwesomeIcons.linkedin,
                                          ),
                                          color: Color.fromRGBO(0, 119, 181, 1),
                                          iconSize: 28,
                                        ),
                                        SizedBox(width: 10),
                                        IconButton(
                                          tooltip: 'Instagram',
                                          onPressed: _launchInstagramURL,
                                          icon: Icon(SimpleIcons.instagram),
                                          color: SimpleIconColors.instagram,
                                          iconSize: 28,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: Column(
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
                                  padding: EdgeInsets.only(top: 15, bottom: 15),
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
                                  padding: EdgeInsets.only(top: 15, bottom: 15),
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
    );
  }
}
