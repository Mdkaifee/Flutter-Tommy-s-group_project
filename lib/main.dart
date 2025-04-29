
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; // Import flutter_bloc
import 'blocs/presentation/message_bloc.dart'; // Import the bloc
import 'presentation/screens/chat_screen.dart'; // Import the chat screen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Chat Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false, 
      home: BlocProvider<MessageBloc>( // Wrap your app with BlocProvider
        create: (context) => MessageBloc(), // Provide the MessageBloc here
        child: const ChatScreen(),
      ),
    );
  }
}
// import 'package:flutter/material.dart';

// class UShapePainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     final Paint paint = Paint()
//       ..color = Colors.orange // Set your desired color for the U shape
//       ..style = PaintingStyle.fill;

//     // First U shape (original)
//     Path path = Path();
//     path.moveTo(0, 0); // Start at the top-left corner
//     path.lineTo(0, size.height);  // Left vertical line

//     // Deeper bottom curve with a "gaddha" inside the U
//     path.quadraticBezierTo(
//       size.width / 2, size.height - 380, // Control point (deeper dip)
//       size.width, size.height);  // Right vertical line

//     path.lineTo(size.width, 0); // Right vertical line
//     path.close();
//     canvas.drawPath(path, paint);

//     // Inverted U shape above the original U shape
//     Path invertedPath = Path();
//     invertedPath.moveTo(0, 0); // Start at the top-left corner
//     invertedPath.lineTo(0, -size.height);  // Left vertical line

//     // Corrected inward curve for the inverted U (gaddha-like dip)
//     invertedPath.quadraticBezierTo(
//       size.width / 2, -size.height + 380, // Control point (now inward dip)
//       size.width, -size.height);  // Right vertical line

//     invertedPath.lineTo(size.width, 0); // Right vertical line
//     invertedPath.close();
//     canvas.drawPath(invertedPath, paint);

//     // Adding border with a dark teal color
//     final Paint borderPaint = Paint()
//       ..color = Colors.teal[800]! // Dark teal color for the border
//       ..style = PaintingStyle.stroke // Set the paint style to stroke for border
//       ..strokeWidth = 4; // Set the width of the border

//     // Drawing the border for both U shapes
//     canvas.drawPath(path, borderPaint);
//     canvas.drawPath(invertedPath, borderPaint);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return false;
//   }
// }

// class UShapeWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: CustomPaint(
//           size: Size(200, 200),  // Set the size of the U shape
//           painter: UShapePainter(),
//         ),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     home: UShapeWidget(),
//   ));
// }
