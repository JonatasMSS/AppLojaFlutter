import 'package:flutter/material.dart';
import 'sub_pages/account_page.dart';
import 'sub_pages/products_page.dart';
import 'sub_pages/config.dart';

class BuyScreen extends StatefulWidget {
  const BuyScreen({Key? key}) : super(key: key);

  @override
  _BuyScreenState createState() => _BuyScreenState();
}

class _BuyScreenState extends State<BuyScreen> {
  int _indiceAtual = 0;
  final List<Widget> _pages = [AccountPage(), ProductsPage(), ConfigPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_indiceAtual],
      backgroundColor: Colors.grey[900],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onPressedState,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.red[800],
        currentIndex: _indiceAtual,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Minha Conta",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            label: "Produtos",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.app_settings_alt),
            label: "Configuração",
          ),
        ],
      ),
    );
  }

  void onPressedState(int index) {
    setState(() {
      _indiceAtual = index;
    });
  }
}
