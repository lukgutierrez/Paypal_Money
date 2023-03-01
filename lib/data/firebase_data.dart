import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;
Future<List> getPeople() async {
  List people = [];
  CollectionReference collectionReference = db.collection('Peoples');
  QuerySnapshot queryPeople = await collectionReference.get();
  queryPeople.docs.forEach((documento) {
    people.add(documento.data());
  });
  return people;
}

Future<List> getPeople2() async {
  List people = [];
  CollectionReference collectionReference = db.collection('Money');
  QuerySnapshot queryPeople = await collectionReference.get();
  queryPeople.docs.forEach((documento) {
    people.add(documento.data());
  });
  return people;
}
