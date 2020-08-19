import 'package:cloud_firestore/cloud_firestore.dart';

class ChatModel {
  final String message;
  final Timestamp dateAndTime;
  final String userName;
  final String userImage;
  final bool isMe;

  ChatModel({
    this.message,
    this.dateAndTime,
    this.userName,
    this.userImage,
    this.isMe,
  });

  ChatModel.fromData(Map<String, dynamic> data)
      : message = data['message'],
        dateAndTime = data['date_time'],
        userName = data['user_name'],
        userImage = data['user_image'],
        isMe = data['is_me'];

  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'date_time': dateAndTime,
      'user_name': userName,
      'user_image': userImage,
      'is_me': isMe,
    };
  }
}
