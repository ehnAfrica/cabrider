import 'package:firebase_database/firebase_database.dart';

class cabUser{
  String fullName;
  String email;
  String phone;
  String id;

  cabUser({
    this.email,
    this.fullName,
    this.phone,
    this.id,
});
  cabUser.fromSnapshot(DataSnapshot snapshot){
    id = snapshot.key;
    phone = snapshot.value['phone'];
    email = snapshot.value['email'];
    fullName = snapshot.value['fullname'];
  }
}