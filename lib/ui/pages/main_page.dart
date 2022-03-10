part of 'pages.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      child: Center(
        child: Container(
          height: 200,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Image.asset("assets/money.png"),
          ),
        ),
      ),
    );
  }
}
