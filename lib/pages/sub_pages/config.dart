import 'package:flutter/material.dart';

class ConfigPage extends StatefulWidget {
  const ConfigPage({Key? key}) : super(key: key);

  @override
  _ConfigPageState createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {
  late Color corTile;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 20),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 10,
          decoration: const BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: const Center(
            child: Text(
              "Configurações",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        ListView(
          shrinkWrap: true,
          children: [
            ListTile(
              onTap: () {
                setState(() {
                  corTile = Colors.grey.shade900;
                });
              },
              leading: Icon(
                Icons.people,
                color: Colors.white,
              ),
              title: Text("Minha Conta"),
              textColor: Colors.white,
            ),
            ListTile(
              onTap: () {
                setState(() {
                  corTile = Colors.grey.shade900;
                });
              },
              leading: Icon(
                Icons.map_sharp,
                color: Colors.white,
              ),
              title: Text("Configurar Endereços"),
              textColor: Colors.white,
            ),
            ListTile(
              onTap: () {
                setState(() {
                  corTile = Colors.grey.shade900;
                });
              },
              leading: Icon(
                Icons.monetization_on_outlined,
                color: Colors.white,
              ),
              title: Text("Formas de pagamento"),
              textColor: Colors.white,
            ),
            ListTile(
              onTap: () {
                setState(() {
                  corTile = Colors.grey.shade900;
                });
              },
              leading: Icon(
                Icons.map_rounded,
                color: Colors.white,
              ),
              title: Text("Acompanhar Pedidos"),
              textColor: Colors.white,
            ),
          ],
        ),
      ],
    );
  }
}
