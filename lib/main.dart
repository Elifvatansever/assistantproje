import 'package:assistantproje/screen/login/LoginPage.dart';
import 'package:assistantproje/viewmodel/login/login_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<LoginViewModel>(
            create: (context) => LoginViewModel(), lazy: false),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(right: 100.0, left: 120.0, top: 80),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    'Assistant',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 35,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Dijital Asistan'a ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const Text(
                  'Hoşgeldiniz!',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            Container(
                child: const Padding(
              padding: EdgeInsets.all(38.0),
              child: Text(
                '''Et quisquam dolor qui architecto illum ut exercitationem dolor aut voluptus dolorem non facere autem 33 omnis eligendi ut velit voluptus ''',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                ),
              ),
            )),
            const Icon(
              Icons.arrow_downward_outlined,
              color: Colors.green,
              size: 40,
            ),
            const SizedBox(
              height: 45,
            ),
            SizedBox(
              height: 55,
              width: 150,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Başla',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                ),
              ),
            ),
            const SizedBox(
              height: 45,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Zaten Hesabınız var mı?',
                  style: TextStyle(
                      color: Color.fromARGB(255, 117, 115, 115),
                      fontSize: 17,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginView())),
                    child: const Text(
                      'Giriş Yap',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    )),
                IconButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginView())),
                    icon: const Icon(
                      Icons.arrow_forward,
                      color: Colors.green,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
