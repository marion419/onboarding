import 'package:uuid/uuid.dart';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';

// DateTime parseTime(Timestamp date) {
//   return date as DateTime;
// }

class MemoModel {
  final String id;
  final String title;
  final String memo;
  final DateTime createdAt;

  MemoModel({
    String? id,
    required this.title,
    required this.memo,
    DateTime? createdAt,
  })  : id = id ?? Uuid().v4(),
        createdAt = createdAt ?? DateTime.now();

  factory MemoModel.fromJson(Map<String, dynamic> json) {
    return MemoModel(
      id: json['id'],
      title: json['title'],
      memo: json['memo'],
      createdAt: DateTime.parse(json['createdAt']),
      // createdAt: (json["createdAt"] as Timestamp).toDate()
    );
  }
  //파이어스토어에 전달하기 위해 형변환
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'memo': memo,
      'createdAt': createdAt.toIso8601String(),
    };
  }
}