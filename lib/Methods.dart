import 'package:firebase_auth/firebase_auth.dart';

Future<User?> createAccount(String name, String email, String password) async{
  FirebaseAuth _auth = FirebaseAuth.instance;
  try{
    User? user = (await _auth.createUserWithEmailAndPassword(
        email: email, password: password))
    .user;

    if(user != null){
      print("Account Created Successfully");
      return user;
  }
    else{
      print("Account creation failed");
      return user;
  }
  }catch(e){
    print(e);
    return null;
  }
}

Future<User?> login(String email, String password) async{
  FirebaseAuth _auth = FirebaseAuth.instance;
  try{
    User? user = (await _auth.signInWithEmailAndPassword(
        email: email, password: password))
        .user;
    if(user != null){
      print("Login Successfull");
      return user;
    }
    else{
      print("Login Failure");
      return user;
    }

  }
  catch(e){
    print(e);
    return null;
  }
}

Future logOut() async{
  FirebaseAuth _auth = FirebaseAuth.instance;
  try{
    await _auth.signOut();
  }
  catch(e){
    print("error");
  }
}