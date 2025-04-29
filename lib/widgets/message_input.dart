import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/presentation/message_bloc.dart';
import '../blocs/presentation/message_event.dart';


class MessageInput extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  MessageInput({super.key});

  @override 
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0, left: 22.0, right: 22.0), // Adjust the top padding to move it lower
      child: SingleChildScrollView(  // Wrap the widget in a SingleChildScrollView for scrolling behavior
        child: Column(  // Use Column to allow vertical scrolling if needed
          children: [
            // Text input field with rounded corners
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12.0), // Padding inside the container
              decoration: BoxDecoration(
                color: const Color(0xFFFFF8DC), // Background color of the input field (light cream)
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50), // No rounded corner on top-left
                  topRight: Radius.circular(0), // Rounded corner at top-right
                  bottomLeft: Radius.circular(0), // Rounded corner at bottom-left
                  bottomRight: Radius.circular(0), // Rounded corner at bottom-right
                ), // Rounded corners for the whole container
                border: Border.all(
                  color: const Color(0xFF2A9D8F), // Border color (#2A9D8F, teal)
                  width: 1,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 2,
                    blurRadius: 8,
                    offset: Offset(0, 3), // Shadow position
                  ),
                ],
              ),
              child: Row(
                children: [
                  // Text input field (multiline with fixed height)
                  Expanded(
                    child: Container(
                      height: 60.0,  // Fixed height for the text input field
                      child: TextField(
                        controller: _controller,
                        maxLines: null,  // Allow multiple lines
                        keyboardType: TextInputType.multiline, // Allow multiline input
                        style: const TextStyle(color: Color(0xFF0C201D), fontSize: 12, fontFamily: 'Fraunces',), // Text color after typing (#0C201D)
                        decoration: const InputDecoration(
                          hintText: 'Type a message...',
                          border: InputBorder.none,  // Remove the default border
                          hintStyle: TextStyle(color: Colors.grey), // Hint text color
                        ),
                      ),
                    ),
                  ),
                  // Flag icon (Left icon, aligned to the left)
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Image.asset(
                      'assets/send.png',
                      width: 28,
                      height: 28,
                    ),
                  ),
                  // Column of Camera and Send icons, aligned to the right
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Camera icon (Top icon)
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Image.asset(
                          'assets/camera.png',
                          width: 20,
                          height: 20,
                        ),
                      ),
                      // Send button (Middle icon)
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Image.asset(
                          'assets/flag.png',
                          width: 24,
                          height: 24,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
