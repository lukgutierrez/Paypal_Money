import 'package:flutter/material.dart';
import 'package:paypal_money_false/data/firebase_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bienvenido , Luciano Gutierrez",
            style: TextStyle(color: Colors.black)),
        leading: Icon(
          Icons.person,
          color: Color(0xFFF001f6b),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: FutureBuilder(
          future: getPeople(),
          builder: ((context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data?.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Card(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              elevation: 8,
                              child: ListTile(
                                leading: SizedBox(
                                    width: 40,
                                    height: 40,
                                    child: Image(
                                        image:
                                            AssetImage("assets/paypal.png"))),
                                title: Text(
                                  snapshot.data?[index]['name'],
                                  style: TextStyle(fontSize: 25),
                                ),
                                subtitle: Text("Saldo en tu PayPal"),
                              )),
                        ),
                        Image(image: AssetImage("assets/fondo.jpg")),
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
