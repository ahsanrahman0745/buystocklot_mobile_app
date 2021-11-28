

import 'package:country_list_pick_with_nation/country_list_pick.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

class HomePages extends StatelessWidget {
  const HomePages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: textBrownColor,

      appBar: AppBar(
        backgroundColor: textBrownColor,
        elevation: 0,
        toolbarHeight: 80,
        leadingWidth: 20,
        actions: [
          //    if you need custome picker use this
          //     pickerBuilder: (context, CountryCode countryCode) {
          //       return Row(
          //         children: [
          //           Image.asset(
          //             countryCode.flagUri,
          //             package: 'country_list_pick_with_nation',
          //           ),
          //           Text(countryCode.code),
          //           Text(countryCode.dialCode),
          //         ],
          //       );
          //     },
          //=============================
          CountryListPick(
            theme: CountryTheme(
                isShowFlag: true,
                isShowTitle: false,
                isShowCode: false,
                isDownIcon: false,
                showEnglishName: false,
                displayAsNationality: false),
            initialSelection: '+2',
            onChanged: (CountryCode code) {
              print(code.name);
            },
          ),
        ],
      ),

      //===============================================

      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(
                color: Color(0xFF0062ac),
              ),
              accountName: const Text("Marcelo Augusto Elias"),
              accountEmail: const Text("Matrícula: 5046850"),
              currentAccountPicture: CircleAvatar(
                backgroundColor:
                Theme.of(context).platform == TargetPlatform.iOS
                    ? Color(0xFF0062ac)
                    : Colors.white,
                child: const Icon(
                  Icons.person,
                  size: 50,
                ),
              ),
            ),
            ListTile(
              dense: true,
              title: const Text("Alternar Matrícula"),
              leading: Image.asset(
                "assets/images/icon_alterna_matricula.png",
                width: 20.0,
              ),
            ),
            ListTile(
              onTap: () {
                // Navigator.pop(context);
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //       builder: (context) => Contracheques()),
                // );
              },
              dense: true,
              title: const Text("Contracheque"),
              leading: Image.asset(
                "assets/images/icon_contracheque.png",
                width: 20.0,
              ),
            ),
            ListTile(
              onTap: () {
                // Navigator.pop(context);
                // Navigator.push(
                //  context,
                //  MaterialPageRoute(
                //    builder: (context) => ),
                // );
              },
              dense: true,
              title: const Text("Autorização"),
              leading: Image.asset(
                "assets/images/icon_autorizacao.png",
                width: 20.0,
              ),
            ),
            ListTile(
              onTap: () {},
              dense: true,
              title: const Text("Gráficos/Relatórios"),
              leading: Image.asset(
                "assets/images/icon_grafico.png",
                width: 20.0,
              ),
            ),
            ListTile(
              onTap: () {
                // Navigator.pop(context);
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //       builder: (context) => HistoricoConsignacoes()),
                // );
              },
              dense: true,
              title: const Text("Consignações"),
              leading: Image.asset(
                "assets/images/icon_consignacao.png",
                width: 20.0,
              ),
            ),
            ListTile(
              onTap: () {
                // Navigator.pop(context);
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //       builder: (context) => ConsultaMargem()),
                // );
              },
              dense: true,
              title: const Text("Consulta de Margem"),
              leading: Image.asset(
                "assets/images/icon_consulta_margem.png",
                width: 20.0,
              ),
            ),
            ListTile(
              dense: true,
              title: const Text("Informe de Rendimentos"),
              leading: Image.asset(
                "assets/images/icon_rendimento.png",
                width: 20.0,
              ),
            ),
            ListTile(
              onTap: () {
                // Navigator.pop(context);
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //       builder: (context) => SimularEmprestimos()),
                // );
              },
              dense: true,
              title:const Text("Simular Empréstimo"),
              leading:  Image.asset(
                "assets/images/Icon_cal.png",
                width: 20.0,
              ),
            ),
            const Divider(),
            ListTile(
              dense: true,
              title: const Text("Compartilhar"),
              leading:  Image.asset(
                "assets/images/icon_compartilhar.png",
                width: 20.0,
              ),
            ),
            ListTile(
              dense: true,
              title: const Text("Avaliar"),
              leading: Image.asset(
                "assets/images/icon_estrela.png",
                width: 20.0,
              ),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              dense: true,
              title: const Text("Sair"),
              trailing: const Text(
                "Versão 2.0",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              leading: Image.asset(
                "assets/images/icon_porta_sair.png",
                width: 20.0,
              ),
            ),
          ],
        ),
      ),

      //===============
    );
  }
}
