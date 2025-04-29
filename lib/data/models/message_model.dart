// // class MessageModel {
// //   final String content;
// //   final String sender;
// //   final DateTime timestamp;

// //   MessageModel({
// //     required this.content,
// //     required this.sender,
// //     required this.timestamp,
// //   });

// //   factory MessageModel.fromJson(Map<String, dynamic> json) {
// //     return MessageModel(
// //       content: json['content'],
// //       sender: json['sender'],
// //       timestamp: DateTime.parse(json['timestamp']),
// //     );
// //   }

// //   Map<String, dynamic> toJson() {
// //     return {
// //       'content': content,
// //       'sender': sender,
// //       'timestamp': timestamp.toIso8601String(),
// //     };
// //   }
// // }
// class MessageModel {
//   final String content;
//   final String sender;
//   final DateTime timestamp;

//   MessageModel({
//     required this.content,
//     required this.sender,
//     required this.timestamp,
//   });

//   factory MessageModel.fromJson(Map<String, dynamic> json) {
//     return MessageModel(
//       content: json['content'],
//       sender: json['sender'],
//       timestamp: DateTime.parse(json['timestamp']),
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'content': content,
//       'sender': sender,
//       'timestamp': timestamp.toIso8601String(),
//     };
//   }
// }
// class MessageModel {
//   final String content;
//   final String sender;
//   final DateTime timestamp;
//   final bool isSender; // To identify if it's a sender's message

//   MessageModel({
//     required this.content,
//     required this.sender,
//     required this.timestamp,
//     required this.isSender,
//   });

//   factory MessageModel.fromJson(Map<String, dynamic> json) {
//     return MessageModel(
//       content: json['content'],
//       sender: json['sender'],
//       timestamp: DateTime.parse(json['timestamp']),
//       isSender: json['isSender'],
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'content': content,
//       'sender': sender,
//       'timestamp': timestamp.toIso8601String(),
//       'isSender': isSender,
//     };
//   }
// }
class MessageModel {
  final String content;
  final String sender;
  final DateTime timestamp;
  final bool isSender; // True if the message is from the user (Kaifee)
  
  MessageModel({
    required this.content,
    required this.sender,
    required this.timestamp,
    required this.isSender,
  });

  factory MessageModel.fromJson(Map<String, dynamic> json) {
    return MessageModel(
      content: json['content'],
      sender: json['sender'],
      timestamp: DateTime.parse(json['timestamp']),
      isSender: json['isSender'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'content': content,
      'sender': sender,
      'timestamp': timestamp.toIso8601String(),
      'isSender': isSender,
    };
  }
}
