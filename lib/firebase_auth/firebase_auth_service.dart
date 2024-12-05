import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService {
  FirebaseAuth _auth = FirebaseAuth.instance;
  // final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<User?> signUpWithEmailAndPassword(
    String email,
    String password,
    String username,
    String phoneNumber,
    String selectedCountryCode,
    String selectedLanguage,
    String confirmPassword,
    bool rememberMe,
  ) async {
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } catch (e) {
      print("Some error Occured");
    }
    return null;
  }

  Future<User?> signInWithEmailAndPassword(
      String email, String password, bool rememberMe) async {
    try {
      UserCredential credential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } catch (e) {
      print("Some error Occured");
    }
    return null;
  }
}
