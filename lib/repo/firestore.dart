import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:swipeit/models/acct.dart';
import 'package:swipeit/models/cardItem.dart';

final databaseReference = Firestore.instance;

void createRecord(CardItem data, String category) async {
  DocumentReference ref = await databaseReference.collection("transactions")
      .add({
    'store': data.content,
    'price': data.price,
    'date': data.date,
    'category': category
  });
  print(ref.documentID);
}

void createAcctRecord(String email) async {
  await databaseReference.collection("login")
      .document(email)
      .setData({'email': email});
}

void updateAcctRecord(Account acct) async {
  try {
    databaseReference
        .collection('login')
        .document(acct.email)
        .updateData({
          'budget': acct.budget,
          'spent': acct.spent,});
  } catch (e) {
    print(e.toString());
  }
}

double getTotal(Account acct) {
  double total = 0;
  try {
    databaseReference
        .collection('transactions')
        .getDocuments()
        .then((QuerySnapshot snapshot) {
      snapshot.documents.forEach((f) => print('${f.data}}'));
    });
  } catch (e) {
    print(e.toString());
  }
  return total;
}