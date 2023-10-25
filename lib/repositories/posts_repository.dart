import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

import '../models/post.dart';

class PostsRepositor extends ChangeNotifier {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  CollectionReference _postsCollection =
      FirebaseFirestore.instance.collection('posts');

  Future<List<PostModel>> getAll() async {
    try {
      QuerySnapshot querySnapshot = await _postsCollection.get();
      List<PostModel> posts = querySnapshot.docs.map((doc) {
        return PostModel(
          id: doc.id,
          title: doc['name'],
          description: doc['email'],
          imageUrl: doc['age'],
        );
      }).toList();
      return posts;
    } catch (e) {
      print("Erro ao obter post: $e");
      return [];
    }
  }

  Future createPost(PostModel post) async {
    final docUser = _postsCollection.doc();
    post.id = docUser.id;
    final json = post.toJson();
    await docUser.set(json);
  }

  Future<void> delete(String postId) async {
    try {
      await _postsCollection.doc(postId).delete();
    } catch (e) {
      print("Erro ao excluir post: $e");
    }
  }
}
