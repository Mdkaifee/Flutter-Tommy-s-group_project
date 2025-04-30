class MessageModel {
  final String content;
  final String sender;
  final String time;  // Static time as String
  final bool isSender;

  // Constructor for MessageModel
  MessageModel({
    required this.content,
    required this.sender,
    required String time,  // Accept time as a string
    required this.isSender,
  }) : time = _formatTime(time); // Ensure time is formatted when creating the object

  // Helper function to ensure the time is always formatted as HH:mm
  static String _formatTime(String time) {
    final timeParts = time.split(":");

    if (timeParts.length == 2) {
      final hour = timeParts[0].padLeft(2, '0');  // Pad hour with leading zero if needed
      final minute = timeParts[1].padLeft(2, '0');  // Pad minute with leading zero if needed

      // Return formatted time in HH:mm
      return '$hour:$minute';
    }

    return time;  // If it's not a valid format, return the original time
  }

  // Getter for formatted time
  String get formattedTime {
    return time;
  }

  // Factory method to create a MessageModel from JSON
  factory MessageModel.fromJson(Map<String, dynamic> json) {
    return MessageModel(
      content: json['content'],
      sender: json['sender'],
      time: json['time'], // Static time as String
      isSender: json['isSender'],
    );
  }

  // Method to convert MessageModel to JSON
  Map<String, dynamic> toJson() {
    return {
      'content': content,
      'sender': sender,
      'time': time,  // Static time as String
      'isSender': isSender,
    };
  }
}
