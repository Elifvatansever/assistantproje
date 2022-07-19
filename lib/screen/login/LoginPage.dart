import 'package:assistantproje/screen/home/FirstPage.dart';
import 'package:assistantproje/viewmodel/login/login_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'assistant',
            style: TextStyle(
                color: Colors.red, fontSize: 30, fontWeight: FontWeight.w400),
          ),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Giriş Yap',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          '''Et quisquam dolor qui architecto illum 
                      ut exercitationem.''',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 113, 109, 109),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Text(
                            'E-Posta',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'ornek@ornek.com.tr',
                          hintText: 'ornek@ornek.com.tr',
                        ),
                        controller: usernameController,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Text(
                            'Parola',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: '*******',
                            suffixIcon: Icon(Icons.visibility_off)),
                        controller: passwordController,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text(
                            'Beni Hatırla',
                            style: TextStyle(
                              color: Color.fromARGB(255, 113, 109, 109),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 150,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Parolamı Unuttum',
                              style: TextStyle(
                                color: Color.fromARGB(255, 159, 154, 154),
                              ),
                            ))
                      ],
                    ),
                    Text(
                        '${context.watch<LoginViewModel>().ischeck.toString()}'),
                    SizedBox(
                      height: 50,
                      width: 150,
                      child: ElevatedButton(
                          onPressed: () {
                            context.read<LoginViewModel>().goToHome(
                                usernameController.text,
                                passwordController.text,
                                context);
                          },
                          child: const Text(
                            "Giriş",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          ),
                          style:
                              ElevatedButton.styleFrom(primary: Colors.green)),
                    )
                  ],
                )),
          ),
        ));
  }
}
