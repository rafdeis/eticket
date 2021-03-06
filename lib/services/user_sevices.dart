part of 'services.dart';

class UserServices {
  static CollectionReference _userCollection =
    Firestore.instance.collection('user');
  
  static Future<void> updateUser(User user) async {
    _userCollection.document(user.id).setData({
      'email' : user.email,
      'name' : user.name,
      'balance' : user.balance,
      'selectedGenres' : user.selectedGenres,
      'selectedLanguage' : user.selectedLanguage,
      'profilePicture' : user.profilePicture ?? ""
    });
  }
}