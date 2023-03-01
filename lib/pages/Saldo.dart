import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:paypal_money_false/data/firebase_data.dart';

class SaldoPage extends StatefulWidget {
  const SaldoPage({Key? key}) : super(key: key);

  @override
  State<SaldoPage> createState() => _SaldoPageState();
}

class _SaldoPageState extends State<SaldoPage> {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String _FechaActual = DateFormat("dd/MM/yyyy HH:mm", 'es_ES').format(now);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFF001f6b),
        title: Text(
          "Saldo de PayPal",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: FutureBuilder(
          future: getPeople2(),
          builder: ((context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data?.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Divider(
                          height: 60,
                          color: Colors.transparent,
                        ),
                        Text(
                          snapshot.data?[index]['money'],
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.w200),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text("Disponible"),
                        ),
                        Divider(
                          height: 10,
                        ),
                        Text(
                          "Este es tu dinero actual en tu cuenta.",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 18),
                        ),
                        Divider(
                          height: 30,
                          color: Colors.transparent,
                        ),
                        Column(
                          children: [
                            Text("Ultima Actualización:",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 18)),
                            Text(_FechaActual,
                                style: TextStyle(
                                    fontWeight: FontWeight.w300, fontSize: 18)),
                          ],
                        ),
                      ],
                    );
                  });
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          })),
    );
  }
}
