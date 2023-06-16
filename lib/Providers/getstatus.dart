import 'package:cloud_firestore/cloud_firestore.dart';

Future<String> getFieldValue(String documentId, String fieldName) async {
  // Get a reference to the document
  DocumentReference documentReference =
      FirebaseFirestore.instance.collection('status').doc(documentId);

  try {
    DocumentSnapshot documentSnapshot = await documentReference.get();

    // Check if the document exists
    if (documentSnapshot.exists) {
      // Retrieve the field value
      dynamic fieldValue = documentSnapshot.get(fieldName);

      // Return the field value as a string
      return fieldValue.toString();
    } else {
      return 'Document does not exist';
    }
  } catch (e) {
    return 'Error retrieving document: $e';
  }
}
