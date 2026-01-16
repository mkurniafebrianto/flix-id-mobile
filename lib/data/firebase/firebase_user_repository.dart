import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart';

import '../../domain/entities/result.dart';
import '../../domain/entities/user.dart';
import '../repositories/user_repository.dart';

class FirebaseUserRepository implements UserRepository {
  final FirebaseFirestore _firebaseFirestore;

  FirebaseUserRepository({FirebaseFirestore? firebaseFirestore})
    : _firebaseFirestore = firebaseFirestore ?? FirebaseFirestore.instance;

  @override
  Future<Result<User>> createUser({required User user}) async {
    final users = _firebaseFirestore.collection('users');

    await users.doc(user.uid).set({
      'uid': user.uid,
      'email': user.email,
      'name': user.name,
      'photoUrl': user.photoUrl,
      'balance': user.balance,
    });

    final result = await users.doc(user.uid).get();

    if (result.exists) {
      return Result.success(User.fromJson(result.data()!));
    } else {
      return const Result.failed('Failed to create user');
    }
  }

  @override
  Future<Result<User>> getUser({required String uid}) async {
    final documentReference = _firebaseFirestore.doc('users/$uid');
    final result = await documentReference.get();

    if (result.exists) {
      return Result.success(User.fromJson(result.data()!));
    } else {
      return const Result.failed('User not found');
    }
  }

  @override
  Future<Result<int>> getUserBalance({required String uid}) async {
    final documentReference = _firebaseFirestore.doc('users/$uid');
    final result = await documentReference.get();

    if (result.exists) {
      return Result.success(result.data()!['balance']);
    } else {
      return const Result.failed('User not found');
    }
  }

  @override
  Future<Result<User>> updateUser({required User user}) async {
    try {
      final documentReference = _firebaseFirestore.doc('users/${user.uid}');

      await documentReference.update(user.toJson());

      final result = await documentReference.get();

      if (result.exists) {
        final updatedUser = User.fromJson(result.data()!);
        if (updatedUser == user) {
          return Result.success(updatedUser);
        } else {
          return const Result.failed('Failed to update user data');
        }
      } else {
        return const Result.failed('Failed to update user data');
      }
    } on FirebaseException catch (e) {
      return Result.failed(e.message ?? 'Failed to update user data');
    }
  }

  @override
  Future<Result<User>> updateUserBalance({
    required String uid,
    required int balance,
  }) async {
    final documentReference = _firebaseFirestore.doc('users/$uid');
    final result = await documentReference.get();

    if (result.exists) {
      await documentReference.update({'balance': balance});

      final updatedResult = await documentReference.get();

      if (updatedResult.exists) {
        final updatedUser = User.fromJson(updatedResult.data()!);
        if (updatedUser.balance == balance) {
          return Result.success(updatedUser);
        } else {
          return const Result.failed('Failed to update user balance');
        }
      } else {
        return const Result.failed('Failed to retrieve updated user balance');
      }
    } else {
      return const Result.failed('User not found');
    }
  }

  @override
  Future<Result<User>> uploadProfilePicture({
    required User user,
    required File imageFile,
  }) async {
    final fileName = basename(imageFile.path);

    final reference = FirebaseStorage.instance.ref().child(fileName);

    try {
      await reference.putFile(imageFile);

      final downloadUrl = await reference.getDownloadURL();

      final updatedResult = await updateUser(
        user: user.copyWith(photoUrl: downloadUrl),
      );

      if (updatedResult.isSuccess) {
        return Result.success(updatedResult.resultValue!);
      } else {
        return Result.failed(updatedResult.errorMessage!);
      }
    } catch (e) {
      return const Result.failed('Failed to upload profile picture');
    }
  }
}
