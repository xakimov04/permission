// import 'dart:io';

// import 'package:firebase_storage/firebase_storage.dart';

// class StorageService {
//   final FirebaseStorage _firebaseStorage = FirebaseStorage.instance;
//   Future<String?> uploadFile(String filePath, String fileName) async {
//     File file = File(filePath);
//     try {
//       Reference ref = _firebaseStorage.ref('upload/$fileName');
//       await ref.putFile(file);
//       String downloadURL = await ref.getDownloadURL();
//       return downloadURL;
//     } on FirebaseException catch (e) {
//       print('Error deleting file: $e');
//     } catch (e) {
//       print('Unexpected error: $e');
//     }
//     return null;
//   }

//   Future<void> deleteFile(String fileName) async {
//     try {
//       Reference ref = _firebaseStorage.ref('upload/$fileName');
//       await ref.delete();
//     } on FirebaseException catch (e) {
//       print('Error deleting file: $e');
//     } catch (e) {
//       print('Unexpected error: $e');
//     }
//   }
// }
