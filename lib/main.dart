import 'package:flutter/material.dart';
import 'package:loja/pages/buy_screen.dart';

void main() => runApp(MainPage());

int passPage = 0;

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // late MediaQueryData _screen;
  int _indiceAtual = 0;

  @override
  Widget build(BuildContext context) {
    // _screen = MediaQuery.of(context);
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        body: LoginScreen(),
      ),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final textControllL = TextEditingController();
        final textControlP = TextEditingController();
        Color colorB = Colors.red.shade400;
        return SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 80),
                //color: Colors.white,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3,
                child: const Image(
                  image: AssetImage('assets/logo.png'),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 70, 20, 20),
                decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextFormField(
                  controller: textControllL,
                  style: TextStyle(color: Colors.white38),
                  decoration: const InputDecoration(
                    labelText: "Usuario",
                    prefixIcon: Icon(Icons.person, color: Colors.white30),
                    border: InputBorder.none,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextFormField(
                  controller: textControlP,
                  style: TextStyle(color: Colors.white38),
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: "Senha",
                    prefixIcon: Icon(Icons.vpn_key, color: Colors.white30),
                    border: InputBorder.none,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: colorB),
                  onPressed: () {
                    print(
                      "Senha:" +
                          textControlP.text +
                          " Login:" +
                          textControllL.text,
                    );
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BuyScreen()));
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: TextButton(
                  onPressed: () => {},
                  child: const Text(
                    "Esqueci minha senha",
                    style: TextStyle(
                        color: Colors.white60, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
