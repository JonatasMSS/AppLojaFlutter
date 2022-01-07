import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Center(
              heightFactor: 2.0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(90),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage('assets/pessoa.jpeg'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 40,
              alignment: Alignment.center,
              padding: EdgeInsets.only(bottom: 20),
              child: const Text(
                "Nome de usuário",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
        Expanded(
          child: ListView(
            children: [
              Divider(
                thickness: 1,
                height: 5,
                color: Colors.grey[700],
              ),
              ListaAccount(Icons.star, Colors.white, "Produtos favoritados",
                  Colors.grey.shade900),
              Divider(
                thickness: 1,
                height: 5,
                color: Colors.grey[700],
              ),
              ListaAccount(Icons.ac_unit, Colors.white, "Historico de Compras",
                  Colors.grey.shade900),
              Divider(
                thickness: 1,
                height: 5,
                color: Colors.grey[700],
              ),
              ListaAccount(Icons.shopping_bag, Colors.white, "Carrinho",
                  Colors.grey.shade900),
            ],
          ),
        )
      ],
    );
  }

  ListTile ListaAccount(
      IconData icone, Color iconColor, String texto, Color tileColor) {
    return ListTile(
      tileColor: tileColor,
      leading: Icon(
        icone,
        color: iconColor,
      ),
      title: Text(
        texto,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      onTap: () {
        setState(() {
          tileColor = Colors.grey.shade900;
        });
      },
    );
  }
}
