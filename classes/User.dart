import 'package:crypto/crypto.dart';
import 'dart:convert';

class User{
  String firstname;
  String lastname;
  String email;
  var _password;
  var _hash;

  User(this.firstname, this.lastname, this.email);

  @override
  String toString() {
    return 'User{firstname: $firstname, lastname: $lastname, email: $email, password: ****}';
  }

  set password(String value) {
    _hash = utf8.encode(value);

    _password = sha1.convert(_hash);
  }

  void sayHello(){
    print('Hello, I\'m $firstname $lastname !');
  }

  bool authenticate(String value){
    return _password == sha1.convert(utf8.encode(value));
  }
}
