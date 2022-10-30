import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class FFFinshotFirebaseUser {
  FFFinshotFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

FFFinshotFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<FFFinshotFirebaseUser> fFFinshotFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<FFFinshotFirebaseUser>(
      (user) {
        currentUser = FFFinshotFirebaseUser(user);
        return currentUser!;
      },
    );
