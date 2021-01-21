import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Change Package Name';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.green),
        home: MainPage(title: title),
      );
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    @required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.green.shade50,
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
          padding: EdgeInsets.all(16),
          child: Center(
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(
                  fontSize: 36,
                  height: 1.3,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: 'Change\n',
                  ),
                  TextSpan(
                    text: 'Package Name\n & \nBundle ID',
                    style: TextStyle(color: Colors.green),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
