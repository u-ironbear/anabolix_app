import 'package:anabolix_app/models/article_model.dart';
import 'package:anabolix_app/models/book_model.dart';
import 'package:anabolix_app/models/brand_model.dart';
import 'package:anabolix_app/models/cycle_model.dart';
import 'package:anabolix_app/models/drug_category.dart';
import 'package:anabolix_app/models/drug_model.dart';
import 'package:anabolix_app/models/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class FirestoreService {
  final CollectionReference _usersCollectionReference =
      Firestore.instance.collection('users');
  final CollectionReference _articlesCollectionReference =
      Firestore.instance.collection('articles');
  final CollectionReference _booksCollectionReference =
      Firestore.instance.collection('books');
  final CollectionReference _brandsCollectionReference =
      Firestore.instance.collection('brands');
  final CollectionReference _cyclesCollectionReference =
      Firestore.instance.collection('cycles');
  final CollectionReference _drugsCollectionReference =
      Firestore.instance.collection('drugs');

  Future createUser(UserModel user) async {
    try {
      await _usersCollectionReference.document(user.id).setData(user.toJson());
    } catch (err) {
      return err.message;
    }
  }

  Future getUser(String uid) async {
    try {
      var userData = await _usersCollectionReference.document(uid).get();
      return UserModel.fromData(userData.data);
    } catch (err) {
      return err.message;
    }
  }

  Future updateUser(UserModel user) async {
    try {
      await _usersCollectionReference
          .document(user.id)
          .updateData(user.toJson());
    } catch (err) {
      return err.message;
    }
  }

  Future getArticles() async {
    try {
      var articlesDocuments =
          await _articlesCollectionReference.orderBy('date').getDocuments();
      if (articlesDocuments.documents.isNotEmpty) {
        return articlesDocuments.documents
            .map((snapshot) => ArticleModel.fromData(snapshot.data))
            .where((element) => element.title != null)
            .toList();
      }
    } catch (err) {
      if (err is PlatformException) {
        return err.message;
      }
      return err.toString();
    }
  }

  Future getBooks() async {
    try {
      var booksDocument =
          await _booksCollectionReference.orderBy('order').getDocuments();
      if (booksDocument.documents.isNotEmpty) {
        return booksDocument.documents
            .map((snapshot) => BookModel.fromData(snapshot.data))
            .toList();
      }
    } catch (err) {
      if (err is PlatformException) {
        return err.message;
      }
      return err.toString();
    }
  }

  Future getBrands(String substance) async {
    try {
      var brandsDocument =
          await _brandsCollectionReference.orderBy('name').getDocuments();
      if (brandsDocument.documents.isNotEmpty) {
        return brandsDocument.documents
            .map((snapshot) => BrandModel.fromData(snapshot.data))
            .where((element) => element.activeSubstance == substance)
            .toList();
      }
    } catch (err) {
      if (err is PlatformException) {
        return err.message;
      }
      return err.toString();
    }
  }

  Future getCycles() async {
    try {
      var cyclesDocument =
          await _cyclesCollectionReference.orderBy('order').getDocuments();
      if (cyclesDocument.documents.isNotEmpty) {
        return cyclesDocument.documents
            .map((snapshot) => CycleModel.fromData(snapshot.data))
            .toList();
      }
    } catch (err) {
      if (err is PlatformException) {
        return err.message;
      }
      return err.toString();
    }
  }

  Future getCycleComponents(String id) async {
    final CollectionReference cycleComponentsCollectionReference = Firestore
        .instance
        .collection('cycles')
        .document(id)
        .collection('components');

    try {
      var cycleComponentsDocument =
          await cycleComponentsCollectionReference.getDocuments();
      if (cycleComponentsDocument.documents.isNotEmpty) {
        return cycleComponentsDocument.documents
            .map((snapshot) => CycleComponent.fromData(snapshot.data))
            .toList();
      }
    } catch (err) {
      if (err is PlatformException) {
        return err.message;
      }
      return err.toString();
    }
  }

  Future getCategories() async {
    try {
      var drugsDocument =
          await _drugsCollectionReference.orderBy('order').getDocuments();
      if (drugsDocument.documents.isNotEmpty) {
        return drugsDocument.documents
            .map((snapshot) => DrugCategory.fromData(snapshot.data))
            .toList();
      }
    } catch (err) {
      if (err is PlatformException) {
        return err.message;
      }
      return err.toString();
    }
  }

  Future getCategoryContent(String code) async {
    final CollectionReference drugsComponentsCollectionReference = Firestore
        .instance
        .collection('drugs')
        .document(code)
        .collection('content');

    try {
      var categoryContentDocument =
          await drugsComponentsCollectionReference.getDocuments();
      if (categoryContentDocument.documents.isNotEmpty) {
        return categoryContentDocument.documents
            .map((snapshot) => DrugModel.fromData(snapshot.data))
            .toList();
      }
    } catch (err) {
      if (err is PlatformException) {
        return err.message;
      }
      return err.toString();
    }
  }
}
