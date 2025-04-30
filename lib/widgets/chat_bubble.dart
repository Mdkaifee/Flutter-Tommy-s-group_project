import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // Import this package

class ChatBubble extends StatelessWidget {
  final String message;
  final String sender;
  final String time;  // Static time
  final bool isSender;

  const ChatBubble({
    Key? key,
    required this.message,
    required this.sender,
    required this.time,  // Static time
    required this.isSender,
  }) : super(key: key);

  // Define the color for each sender
  Color senderColor(String sender) {
    switch (sender.toLowerCase()) {
      case 'lousiana':
        return const Color(0xFF2A9D8F); // Louisiana color
      case 'tommy':
        return const Color(0xFF1D4B45); // Tommy color
      case 'cristofer':
        return const Color(0xFFF4392A); // Cristofer color
      default:
        return Colors.black; // Default text color
    }
  }

  // Method to explicitly format the time as HH:mm
  String _formatTime(String time) {
    final timeParts = time.split(":");
    if (timeParts.length == 2) {
      final hour = timeParts[0].padLeft(2, '0');
      final minute = timeParts[1].padLeft(2, '0');
      return '$hour:$minute';  // Return formatted time
    }
    return time;
  }

  @override
  Widget build(BuildContext context) {
    // Format time before displaying
    String formattedTime = _formatTime(time);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
      child: Align(
        alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
        child: FractionallySizedBox(
          alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
          widthFactor: isSender ? 0.78 : 0.72,   // Set the chat bubble width to 75% of the screen width
          child: Container(
          padding: const EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0), // Removed bottom padding

            decoration: BoxDecoration(
              color: isSender
                  ? const Color(0xFFFCC85F) // Background color for sender (Kaifee)
                  : const Color(0xFFFDD991), // Background color for receiver (Others)
              borderRadius: BorderRadius.only(
                topLeft: isSender ? Radius.circular(50) : Radius.circular(0), // Sender: no radius on top-left, Receiver: radius on top-left
                topRight: isSender ? Radius.circular(0) : Radius.circular(50), // Sender: radius on top-right, Receiver: no radius on top-right
                bottomLeft: isSender ? Radius.circular(50) : Radius.circular(0), // Sender: no radius on bottom-left, Receiver: radius on bottom-left
                bottomRight: isSender ? Radius.circular(0) : Radius.circular(50), // Sender: radius on bottom-right, Receiver: no radius on bottom-right
              ),
              border: Border.all(color: const Color(0xFF72D6C6), width: 1), // Add border with color #72D6C6
            ),
            child: Column(
              crossAxisAlignment: isSender
                  ? CrossAxisAlignment.end // Align sender message to right
                  : CrossAxisAlignment.start, // Align receiver message to left
              children: [
                if (!isSender) ...[
                  // Sender profile image and name
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundImage: AssetImage('assets/$sender.png'), // Profile image of the sender
                      ),
                      const SizedBox(width: 8),
                      // Sender's name with custom color and font size
                      Text(
                        sender,
                        style: TextStyle(
                          fontFamily: 'Fraunces', // Apply Fraunces font
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: senderColor(sender), // Apply color based on sender
                        ),
                      ),
                    ],
                  ),
                  // const SizedBox(height: 4),
                ],
                // Message content with more left padding for sender
                Padding(
                  padding: isSender
                      ? const EdgeInsets.only(left: 16.0, top: 0.0) // Extra left and top padding for sender
                      : const EdgeInsets.only(top: 0.0), // No extra padding for receiver, only top padding
                  child: Text(
                    message,
                    style: const TextStyle(
                      fontFamily: 'Fraunces', // Apply Fraunces font
                      color: Color(0xFF153531), // Content text color
                      fontSize: 14,
                      fontWeight: FontWeight.w400, // Content text font weight
                    ),
                  ),
                ),
                // const SizedBox(height: 4),
                // Time alignment
                 Transform.translate(
                  offset: isSender
                      ? const Offset(0, -4)  // Shift the time upwards for sender
                      : const Offset(0, -4),  // Shift the time upwards for receiver
                  child: Align(
                    alignment: isSender ? Alignment.centerRight : Alignment.centerRight,
                    child: Padding(
                      padding: isSender
                          ? const EdgeInsets.only(left: 5.0, top: 10.0)  // Slight padding for sender
                          : const EdgeInsets.only(right: 20.0, top: 10.0),  // Slight padding for receiver
                      child: Text(
                        formattedTime,
                        style: const TextStyle(
                          fontFamily: 'Fraunces',
                          fontSize: 12,
                          color: Color(0xFF4A6F6A),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}