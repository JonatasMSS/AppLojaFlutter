import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          PrimeiraDivisao(),
          Column(
            children: [
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 20),
                width: MediaQuery.of(context).size.width,
                height: 60,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.red.shade400,
                      Colors.red.shade800,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  "Outros Produtos",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              //Primeira Lista
              Row(
                children: const [
                  OutroProduto(
                    lImage:
                        "https://img.terabyteshop.com.br/produto/g/hd-externo-seagate-basic-1tb-usb-30-black-stjl1000400_110528.png",
                    descProd: "HD Externo Seagate Basic 1TB",
                    preco: 259.99,
                  ),
                  OutroProduto(
                    lImage:
                        "https://images-americanas.b2w.io/produtos/01/00/img7/01/00/item/123403/3/123403301_1GG.png",
                    descProd: "HD Externo WD 500GB",
                    preco: 100.99,
                  ),
                ],
              ),
              //Segunda Lista
              Row(
                children: const [
                  OutroProduto(
                    lImage:
                        "https://images.tcdn.com.br/img/img_prod/672177/pen_drive_64gb_usb_sandisk_cruzer_blade_781_1_20200730185744.png",
                    descProd: "Pendrive Sandisk 64GB",
                    preco: 89.99,
                  ),
                  OutroProduto(
                    lImage:
                        "https://www.qualitech.info/media/catalog/product/cache/1/image/800x/9df78eab33525d08d6e5fb8d27136e95/3/_/3_76.png",
                    descProd: "Pendrive Nano Sandisk 64GB",
                    preco: 99.90,
                  ),
                ],
              ),
              //Terceira Lista
              Row(
                children: const [
                  OutroProduto(
                    lImage:
                        "https://box888.com.br/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/c/a/carregador_cb_132_e_133.png",
                    descProd: "Power Bank 8.000MAH Multilaser",
                    preco: 99.90,
                  ),
                  OutroProduto(
                    lImage:
                        "https://images.tcdn.com.br/img/img_prod/704248/power_bank_pineng_10000mah_sumexr_pn_951_s_2511_1_20201105123744.png",
                    descProd: "Power Bank Pineng 10.000MAH",
                    preco: 110.90,
                  ),
                ],
              ),
              Row(
                children: const [
                  OutroProduto(
                    lImage:
                        "https://img.terabyteshop.com.br/produto/g/hd-externo-seagate-basic-1tb-usb-30-black-stjl1000400_110528.png",
                    descProd: "HD Externo Seagate Basic 1TB",
                    preco: 259.99,
                  ),
                  OutroProduto(
                    lImage:
                        "https://images-americanas.b2w.io/produtos/01/00/img7/01/00/item/123403/3/123403301_1GG.png",
                    descProd: "HD Externo WD 500GB",
                    preco: 100.99,
                  ),
                ],
              ),
              //Segunda Lista
              Row(
                children: const [
                  OutroProduto(
                    lImage:
                        "https://images.tcdn.com.br/img/img_prod/672177/pen_drive_64gb_usb_sandisk_cruzer_blade_781_1_20200730185744.png",
                    descProd: "Pendrive Sandisk 64GB",
                    preco: 89.99,
                  ),
                  OutroProduto(
                    lImage:
                        "https://www.qualitech.info/media/catalog/product/cache/1/image/800x/9df78eab33525d08d6e5fb8d27136e95/3/_/3_76.png",
                    descProd: "Pendrive Nano Sandisk 64GB",
                    preco: 99.90,
                  ),
                ],
              ),
              //Terceira Lista
              Row(
                children: const [
                  OutroProduto(
                    lImage:
                        "https://box888.com.br/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/c/a/carregador_cb_132_e_133.png",
                    descProd: "Power Bank 8.000MAH Multilaser",
                    preco: 99.90,
                  ),
                  OutroProduto(
                    lImage:
                        "https://images.tcdn.com.br/img/img_prod/704248/power_bank_pineng_10000mah_sumexr_pn_951_s_2511_1_20201105123744.png",
                    descProd: "Power Bank Pineng 10.000MAH",
                    preco: 110.90,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class OutroProduto extends StatelessWidget {
  const OutroProduto({
    Key? key,
    required this.lImage,
    required this.descProd,
    required this.preco,
  }) : super(key: key);
  final String lImage;
  final String descProd;
  final double preco;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[
              Colors.grey.shade800,
              Colors.grey.shade900,
            ],
            tileMode: TileMode.clamp,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        height: MediaQuery.of(context).size.height / 4,
        child: Center(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: <Color>[
                          Colors.grey.shade500,
                          Colors.grey.shade700,
                          Colors.grey.shade800,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(20)),
                  margin: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 10,
                  ),
                  child: Image.network(
                    lImage,
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                    errorBuilder: (context, error, stackTrace) {
                      return const Center(
                        child: Text(
                          "Imagem indisponivel",
                          style: TextStyle(color: Colors.white),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 15),
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                width: 300,
                height: 60,
                child: Container(
                  child: ListTile(
                    title: Text(
                      descProd,
                      textAlign: TextAlign.center,
                      textScaleFactor: 0.9,
                    ),
                    subtitle: Text(
                      "RS" + " $preco",
                      textAlign: TextAlign.center,
                      textScaleFactor: 0.8,
                    ),
                    textColor: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PrimeiraDivisao extends StatelessWidget {
  const PrimeiraDivisao({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.red.shade400,
                Colors.red.shade800,
              ],
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.red.shade400,
                blurRadius: 1,
                offset: Offset(1, 1),
              ),
              BoxShadow(
                  color: Colors.red.shade800,
                  blurRadius: 2,
                  offset: Offset(2, 2)),
            ],
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          height: MediaQuery.of(context).size.height / 12,
          alignment: Alignment.center,
          child: const Text(
            "Mais vendidos",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 40),
          //color: Colors.white,
          width: MediaQuery.of(context).size.width,
          height: 300,
          child: Builder(builder: (containerContext) {
            return Container(
              width: MediaQuery.of(containerContext).size.width,
              height: MediaQuery.of(containerContext).size.height,
              //color: Colors.blue,
              child: Builder(builder: (listviewContainer) {
                return ListView(
                  dragStartBehavior: DragStartBehavior.start,
                  scrollDirection: Axis.horizontal,
                  children: [
                    ProdutosPrincipais(
                      context: listviewContainer,
                      preco: 59.99,
                      describe: "Carregador Portátil",
                      imagem:
                          "https://vxcase.vteximg.com.br/arquivos/ids/1110833-1000-1000/carregador-de-celular-portatil-emergency-charger.png?v=637550544712600000",
                    ),
                    ProdutosPrincipais(
                      context: listviewContainer,
                      describe: "Fones Bluetooth Multilaser",
                      imagem:
                          "https://www.extra-imagens.com.br/html/conteudo-produto/3285/55009330/imagens/fone_2.png",
                      preco: 150.99,
                    ),
                    ProdutosPrincipais(
                      context: listviewContainer,
                      describe: "Relogio Inteligente Smartwatch",
                      preco: 78.90,
                      imagem:
                          "https://d3ugyf2ht6aenh.cloudfront.net/stores/951/739/products/aaa1-b5901d1de7a9d9a8f915873833477178-1024-1024.png",
                    ),
                    ProdutosPrincipais(
                      context: listviewContainer,
                      describe: "Anel Inteligente MOTA SmartRing",
                      preco: 159.99,
                      imagem:
                          "https://playappledroid.files.wordpress.com/2014/09/mota-ring-time-black-wshadow-webrevised-bottom.png?w=640",
                    )
                  ],
                );
              }),
            );
          }),
        ),
      ],
    );
  }
}

class ProdutosPrincipais extends StatelessWidget {
  const ProdutosPrincipais({
    Key? key,
    required this.context,
    required this.describe,
    required this.preco,
    required this.imagem,
  }) : super(key: key);
  final BuildContext context;
  final String describe;
  final double preco;
  final String imagem;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 30, left: 20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: <Color>[
            Colors.grey.shade800,
            Colors.grey.shade900,
          ],
          tileMode: TileMode.clamp,
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.black,
            offset: Offset(1, 1),
            blurRadius: 2,
          )
        ],
        color: Colors.green,
        borderRadius: const BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      width: MediaQuery.of(context).size.width / 1.4,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 2,
                    blurStyle: BlurStyle.solid,
                  ),
                ],
                gradient: LinearGradient(
                  colors: <Color>[
                    Colors.grey.shade500,
                    Colors.grey.shade700,
                    Colors.grey.shade800,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              margin: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 20,
              ),
              child: Image.network(
                imagem,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return const Center(
                    child: Text(
                      "Imagem indisponivel",
                      style: TextStyle(color: Colors.white),
                    ),
                  );
                },
              ),
            ),
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: ListTile(
                title: Text(
                  describe,
                  textAlign: TextAlign.center,
                ),
                subtitle: Text(
                  "RS" + " $preco",
                  textAlign: TextAlign.center,
                ),
                textColor: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
