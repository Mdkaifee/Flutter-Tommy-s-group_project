import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // Import this package

class ChatBubble extends StatelessWidget {
  final String message;
  final String sender;
  final DateTime timestamp;
  final bool isSender; // True if it's from the user, false for others

  const ChatBubble({
    Key? key,
    required this.message,
    required this.sender,
    required this.timestamp,
    required this.isSender,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final timeString = '${timestamp.hour}:${timestamp.minute}'; // Formatting time

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

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
      child: Align(
        alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
        child: FractionallySizedBox(
          alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
          widthFactor: 0.75,  // Set the chat bubble width to 75% of the screen width
          child: Container(
            padding: const EdgeInsets.all(12.0),
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
                  const SizedBox(height: 4),
                ],
                // Message content
                Text(
                  message,
                  style: const TextStyle(
                    fontFamily: 'Fraunces', // Apply Fraunces font
                    color: Color(0xFF153531), // Content text color
                    fontSize: 14,
                    fontWeight: FontWeight.w400, // Content text font weight
                  ),
                ),
                const SizedBox(height: 4),
                // Time alignment
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    timeString,
                    style: const TextStyle(fontFamily: 'Fraunces', fontSize: 12, color: Colors.black54),
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
