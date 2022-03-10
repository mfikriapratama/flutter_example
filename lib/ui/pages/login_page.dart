part of 'pages.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usrCtrl = TextEditingController();
  TextEditingController pwCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red[200],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: TextField(
                controller: usrCtrl,
              ),
            ),
            Text("Username"),
            Container(
              child: TextField(
                controller: pwCtrl,
              ),
            ),
            Text("Password"),
            SizedBox(
              height: 25,
            ),
            RaisedButton(
              onPressed: () {
                if (usrCtrl.text == '' || pwCtrl.text == '') {
                  return;
                }

                usrCtrl.clear();
                pwCtrl.clear();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainPage()),
                );
              },
              elevation: 20,
              child: Text("Submit"),
            )
          ],
        ),
      ),
    );
  }
}
