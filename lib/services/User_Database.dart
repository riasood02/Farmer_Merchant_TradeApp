import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farmer_merchant/models/farmer_user.dart';

class DatabaseService{
  final String uid;
  final String email;
  final String user_type;
  DatabaseService({required this.uid,required this.email,required this.user_type});
  //collection reference
  final CollectionReference farmerCollection = FirebaseFirestore.instance.collection('farmer');
  final CollectionReference merchantCollection = FirebaseFirestore.instance.collection('merchant');
  //farmer update data
  Future updateFarmerData(String email,String user_type,String username)async{
    return await farmerCollection.doc(email).set({
      'email': email,
      'user_type': user_type,
      'username': username,



    });
  }
  Future updateDocFields(String fullname,String phno,String state,String city,String w_p,String w_q,String r_p,String r_q,String ma_p,String ma_q,String mi_p,String mi_q,String j_p,String j_q,String c_p,String c_q) async {
    var userDoc = FirebaseFirestore.instance.collection('farmer').doc(email);
    // userDoc.updateData({'fieldName':'newValue'});
    userDoc.update({
      'name': fullname,
      'phone_number':phno,
      'State': state,
      'City': city,
      'wheat_price':w_p,
      'wheat_quantity':w_q,
      'rice_price':r_p,
      'rice_quantity':r_q,
      'maize_price':ma_p,
      'maize_quantity':ma_q,
      'millets_price':mi_p,
      'millets_quantity':mi_q,
      'jute_price':j_p,
      'jute_quantity':j_q,
      'cotton_price':c_p,
      'cotton_quantity':c_q,
    });

  }
  //merchant update data
  Future updateMerchantData(String email,String user_type,String username)async{
    return await merchantCollection.doc(email).set({
      'email': email,
      'user_type': user_type,
      'username': username,
    });
  }
  Future updateDocFields1(String fullname,String phno,String state,String city) async {
    var userDoc = FirebaseFirestore.instance.collection('merchant').doc(email);
    // userDoc.updateData({'fieldName':'newValue'});
    userDoc.update({
      'name': fullname,
      'phone_number':phno,
      'State': state,
      'City': city,

    });

  }
  FarmerData _farmerDataFromSnapshot(DocumentSnapshot snapshot){
    return FarmerData(
        email: email,
        user_type:snapshot.get('user_type'),
        city:snapshot.get('City'),
        phno: snapshot.get('phone_number'),
        fullname: snapshot.get('name'),
        state: snapshot.get('State'),
        w_p: snapshot.get('wheat_price'),
        w_q: snapshot.get('wheat_quantity'),
        r_p: snapshot.get('rice_price'),
        r_q: snapshot.get('rice_quantity'),
        ma_q: snapshot.get('maize_quantity'),
        ma_p: snapshot.get('maize_price'),
        mi_p: snapshot.get('millets_price'),
        mi_q: snapshot.get('millets_quantity'),
        j_p: snapshot.get('jute_price'),
        j_q: snapshot.get('jute_quantity'),

        c_q: snapshot.get('cotton_quantity'),
        c_p: snapshot.get('cotton_price')
    );
  }

  MerchantData _merchantDataFromSnapshot(DocumentSnapshot snapshot){
    return MerchantData(
        email: email,
        user_type:snapshot.get('user_type'),
        city:snapshot.get('City'),
        phno: snapshot.get('phone_number'),
        fullname: snapshot.get('name'),
        state: snapshot.get('State'),

    );
  }
  Stream<QuerySnapshot> get farmer {
    return farmerCollection.snapshots();

  }
  Stream<QuerySnapshot> get merchant {
    return merchantCollection.snapshots();
  }
  Stream<FarmerData> get farmerInfo{
    return farmerCollection.doc(email).snapshots().map(_farmerDataFromSnapshot);
  }
  Stream<MerchantData> get merchantInfo{
    return merchantCollection.doc(email).snapshots().map(_merchantDataFromSnapshot);
  }

}