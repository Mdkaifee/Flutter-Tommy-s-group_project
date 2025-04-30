import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Import for SVG
import '../../blocs/presentation/message_bloc.dart';
import '../../blocs/presentation/message_event.dart';
import '../../blocs/presentation/message_state.dart';
import '../../widgets/chat_bubble.dart';
import '../../widgets/message_input.dart';
import '../../data/models/message_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Import for SVG
import '../../widgets/chat_bubble.dart';
import '../../widgets/message_input.dart';

class TicketHeader extends StatelessWidget implements PreferredSizeWidget {
  const TicketHeader({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(64);

  static const _bodyYellow = Color(0xFFFDC15A);
  static const _tealBorder = Color(0xFFA7E0C5); // Teal color for the border radius
  static const _greenBorder = Color(0xFF246153); // Green color for the border radius

  @override
  Widget build(BuildContext context) {
    // Get the screen width
    double screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start, // Align to the left side
          children: [
            // Combine the image and back button without extra gap
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Image (u.png) directly next to the back button
                Image.asset(
                  'assets/u.png', // Image asset path
                  height: 50, // Adjust the size of the image as needed
                ),
                // Ticket back button directly after the image with no space
                const TicketBackButton(),
              ],
            ),
            const SizedBox(width: 8), // Small gap between button and the rest of the header
            Expanded(
              child: Container(
                height: 56,
                decoration: BoxDecoration(
                  color: _bodyYellow,
                  border: Border.all(color: _tealBorder, width: 2), // Teal color border
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(34),
                    bottomRight: Radius.circular(34),
                  ),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 12),
                    const CircleAvatar(
                      radius: 18,
                      backgroundImage: AssetImage('assets/profile.png'),
                    ),
                    const SizedBox(width: 12),
                    // Use LayoutBuilder to adjust text size based on screen width
                    LayoutBuilder(
                      builder: (context, constraints) {
                        double availableWidth = constraints.maxWidth;
                        double fontSize = availableWidth > 350 ? 16.0 : 14.0; // Adjust font size based on width
                        return Flexible(
                          child: Text(
                            "Tommy’s Group",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: fontSize,
                              fontFamily: 'Fraunces',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        );
                      },
                    ),
                    // Add space between the text and the three dots
                    const SizedBox(width: 12), // Adjust the width here to increase the space
                    // Add the three dot icon
                    Expanded(
                      child: SvgPicture.asset(
                        'assets/threedot.svg',
                        width: 7, // Height remains the same
                        height: 7, // Height remains the same
                      ),
                    ),
                    const SizedBox(width: 26),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 36),
          ],
        ),
      ),
    );
  }
}

class TicketBackButton extends StatelessWidget {
  const TicketBackButton({super.key, this.onTap});
  final VoidCallback? onTap;

  // Colours
  static const _bodyOrange = Color(0xFFFBB428);
  static const _tealBorder = Color(0xFF2A9D8F);
  static const _arrowTeal = Color(0xFF246153);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () => Navigator.maybePop(context),
      child: CustomPaint(
        painter: _StubPainter(
          fill: _bodyOrange,
          stroke: _tealBorder,
        ),
        child: ClipPath(
          child: SizedBox(
            width: 49.5, // Adjust size if needed
            height: 48,
            child: Row(
              children: [
                // Back icon
                Expanded(
                  child: SvgPicture.asset(
                    'assets/backarrow.svg',  // Path to your SVG file
                    width: 24,  // Set the width to 71.5px
                    height: 24,   // Set the height to 48px
                    color: _arrowTeal,
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


class _StubPainter extends CustomPainter {
  const _StubPainter({required this.fill, required this.stroke});
  final Color fill, stroke;

  @override
  void paint(Canvas canvas, Size size) {
    final path = _StraightClipper().getClip(size);

    // Draw the main fill
    canvas.drawPath(path, Paint()..color = fill);

    // Draw the stroke only on the top, right, and bottom sides
    Paint strokePaint = Paint()
      ..color = stroke
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    // Top side stroke
    canvas.drawLine(Offset(0, 0), Offset(size.width, 0), strokePaint);

    // Right side stroke
    canvas.drawLine(Offset(size.width, 0), Offset(size.width, size.height), strokePaint);

    // Bottom side stroke
    canvas.drawLine(Offset(size.width, size.height), Offset(0, size.height), strokePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class _StraightClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final r = size.height * 0.12; // Radius for waterfall curve
    final w = size.width, h = size.height;

    return Path()
      ..moveTo(0, 0) // Start from the top-left corner
      ..lineTo(w, 0) // Move straight across the top
      ..lineTo(w, h) // Move straight down the right side
      ..lineTo(0, h) // Move straight across the bottom
      ..close(); // Close the path back to the top-left
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}


class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Static Messages
    final List<MessageModel> messages = [
      
      MessageModel(
        content: "Hi how are you?",
        sender: "Lousiana",
         time: "12:54",
        isSender: false,
      ),
      MessageModel(
        content: "@Tommy Feeling ok?",
        sender: "Lousiana",
        time: "12:55",
        isSender: false,
      ),
      MessageModel(
        content: "Yes, I'm good. thanks for askings.Didn't do much, feeling bit sick after that meal.So just exhausted.watching netflux,😢",
        sender: "Tommy",
        time: "13:20",
        isSender: false,
      ),
      MessageModel(
        content: "Yes Im well.Had a long day. went hiking with the some people.it was extremely hot couldn't be b...",
        sender: "Tommy",
        time: "12:57",
        isSender: true,
      ),
      MessageModel(
        content: "Yes, I'm good. thanks for askings.Didn't do much, feeling bit sick after that meal.So just exhausted.watching netflux", 
        sender: "Cristofer",
         time: "13:20",
        isSender: false,
      ),
      MessageModel(
        content: "Hi how are you?",
        sender: "Lousiana",
        time: "12:55",
        isSender: false,
      ),
      
      MessageModel(
        content: "Yes, I'm good. thanks for askings.Didn't do much, feeling bit sick after that meal.So just exhausted.watching netflux",
        sender: "Tommy",
        time: "13:20",
        isSender: false,
      ),
      MessageModel(
        content: "Yes, I'm good. thanks for askings.Didn't do much, feeling bit sick after that meal.So just exhausted.watching netflux",
        sender: "Cristofer",
        time: "13:20",
        isSender: false,
      ),
      MessageModel(
        content: "Yes, I'm well. Had a long day. went hiking with the some people. was extremely hot couldn't be b...",
        sender: "Tommy",
         time: "12:57",
        isSender: true,
      ),
      MessageModel(
        content: "Hi how are you?",
        sender: "Lousiana",
        time: "12:55",
        isSender: false,
      ),
    ];


 return Scaffold(
      backgroundColor: const Color(0xFFFFF8DC),
      body: Stack(
        children: [
          // Background image layer (positioned behind the header)
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/bgchat.png'),
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter, // Align the image at the top center
                ),
              ),
            ),
          ),
          // Chat content
          Column(
            children: [
              // Header with background image behind
              const SizedBox(height: 14), // Space for header
              TicketHeader(), // Place the header here after the background image
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                  itemCount: messages.length + 2,
        itemBuilder: (_, i) {
if (i == 0) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: Center(
      child: Container(
        width: 343, // Set width to 343px
        height: 20, // Set height to 20px
        alignment: Alignment.center,
        child: Text(
          "10 July 2025",
          style: TextStyle(
            color: Color(0xFF0C201D), // Dark greenish color for the text
            fontWeight: FontWeight.w400,
            fontFamily: 'Fraunces', // Font Family (make sure it's added in pubspec.yaml)
            fontSize: 12, // Font size
            shadows: [
              Shadow(
                blurRadius: 1.0,
             color: Color(0xFF72D6C6), // A light grey shadow for the glow effect
                offset: Offset(1.0, 1.0),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

// Insert date text after every 5th message
if (i == 7) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: Center(
      child: Container(
        // width: 343, // Set width to 343px
        // height: 13, // Set height to 13px
        alignment: Alignment.center,
        child: Text(
          "11 July 2025",
          style: TextStyle(
            color: Color(0xFF0C201D), // Dark greenish color for the text
            fontWeight: FontWeight.w400,
            fontFamily: 'Fraunces', // Font Family (make sure it's added in pubspec.yaml)
            fontSize: 12, // Font size
            shadows: [
              Shadow(
                blurRadius: 1.0,
                 color: Color(0xFF72D6C6), // A light grey shadow for the glow effect
                offset: Offset(1.0, 1.0),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

  final messageIndex = i - (i > 0 && i < 7 ? 1 : 2);
  final m = messages[messageIndex];
  return ChatBubble(
    message: m.content,
    sender: m.sender,
    time: m.formattedTime,  // Use the formatted time here
    isSender: m.isSender,
  );
}

                ),
              ),
              MessageInput(),
            ],
          ),
        ],
      ),
    );
  
  }
}
     
class TextWithStrokePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final text = "10 July 2025";
    final textStyle = TextStyle(
      fontFamily: 'Fraunces', // Use Fraunces font
      fontSize: 16,  // Adjust font size to match your example
      fontWeight: FontWeight.w600,
      color: const Color(0xFF0C201D), // Text color (#0C201D)
    );

    final borderPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2  // Stroke width of 2
      ..color = const Color(0xFF72D6C6); // Border color (#72D6C6)

    final textPainter = TextPainter(
      text: TextSpan(
        text: text,
        style: textStyle,
      ),
      textDirection: TextDirection.ltr,
    );

    textPainter.layout();

    // Calculate the position to center the text within the available width and height
    final offset = Offset(
      (size.width - textPainter.width) / 2,
      (size.height - textPainter.height) / 2,
    );
    
    // Paint the stroke (border) first
    textPainter.paint(canvas, offset);

    // Now paint the regular text color over the stroke
    final fillTextPainter = TextPainter(
      text: TextSpan(
        text: text,
        style: textStyle.copyWith(color: const Color(0xFF0C201D)), // Text color
      ),
      textDirection: TextDirection.ltr,
    );

    fillTextPainter.layout();
    fillTextPainter.paint(canvas, offset);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}