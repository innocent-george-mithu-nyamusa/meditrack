import 'package:firebase_auth/firebase_auth.dart';
import 'package:meditrack/models/user.dart';

class AuthService {

  FirebaseAuth _auth = FirebaseAuth.instance;

  _userFromFirebaseUser(User user) {
     if (user != null) {
      return AppUser(uid: user.uid, );
    } else {
      return null;
    }
  }
  //Auth Stream for changes
  Stream<AppUser> get user {
    return _auth.authStateChanges().map((User? user) => _userFromFirebaseUser(user!));
  }


  Future signOut() async {
    try {
      return await _auth.signOut();
  } catch(e) {
      print(e.toString());
      return null;
  }
}

}