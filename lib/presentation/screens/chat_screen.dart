// // import 'package:flutter/material.dart';
// // import 'package:flutter_bloc/flutter_bloc.dart';
// // import 'package:flutter_svg/flutter_svg.dart'; // Import for SVG
// // import '../../blocs/presentation/message_bloc.dart';
// // import '../../blocs/presentation/message_event.dart';
// // import '../../blocs/presentation/message_state.dart';
// // import '../../widgets/chat_bubble.dart';
// // import '../../widgets/message_input.dart';
// // import '../../data/models/message_model.dart';

// // class ChatScreen extends StatelessWidget {
// //   const ChatScreen({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     // Static Messages
// //     final List<MessageModel> messages = [
// //       MessageModel(
// //         content: "Hi how are you?",
// //         sender: "lous",
// //         timestamp: DateTime.now().subtract(Duration(minutes: 10)),
// //         isSender: false,
// //       ),
// //       MessageModel(
// //         content: "@Tommy Feeling ok?",
// //         sender: "lous",
// //         timestamp: DateTime.now().subtract(Duration(minutes: 8)),
// //         isSender: false,
// //       ),
     
// //        MessageModel(
// //         content: "Yes, I'm good. thanks for askings.Didn't do much, feeling bit sick after that meal.So just exhausted.watching netflux,",
// //         sender: "tommy",
// //         timestamp: DateTime.now().subtract(Duration(minutes: 6)),
// //         isSender: false,
// //       ),
// //        MessageModel(
// //         content: "Yes Im well.Had a long day. went hiking with the some people.it was extremely hot couldn't be b...",
// //         sender: "tommy",
// //         timestamp: DateTime.now().subtract(Duration(minutes: 6)),
// //         isSender: true,
// //       ),
// //       MessageModel(
// //         content: "Yes, I'm good. thanks for askings.Didn't do much, feeling bit sick after that meal.So just exhausted.watching netflux", 
// //         sender: "cristopher",
// //         timestamp: DateTime.now().subtract(Duration(minutes: 4)),
// //         isSender: false,
// //       ),
// //        MessageModel(
// //         content: "Hi how are you?",
// //         sender: "lous",
// //         timestamp: DateTime.now().subtract(Duration(minutes: 10)),
// //         isSender: false,
// //       ),
// //        MessageModel(
// //         content: "Yes, I'm good. thanks for askings.Didn't do much, feeling bit sick after that meal.So just exhausted.watching netflux",
// //         sender: "tommy",
// //         timestamp: DateTime.now().subtract(Duration(minutes: 6)),
// //         isSender: false,
// //       ),
// //    MessageModel(
// //         content: "Yes, I'm good. thanks for askings.Didn't do much, feeling bit sick after that meal.So just exhausted.watching netflux",
// //         sender: "cristopher",
// //         timestamp: DateTime.now().subtract(Duration(minutes: 4)),
// //         isSender: false,
// //       ),
// //         MessageModel(
// //         content: "Yes, I'm well. Had a long day. went hiking with the some people. was extremely hot couldn't be b...",
// //         sender: "tommy",
// //         timestamp: DateTime.now().subtract(Duration(minutes: 6)),
// //         isSender: true,
// //       ),
// //          MessageModel(
// //         content: "Hi how are you?",
// //         sender: "lous",
// //         timestamp: DateTime.now().subtract(Duration(minutes: 10)),
// //         isSender: false,
// //       ),
// //     ];

// //     return Scaffold(
// //       appBar: PreferredSize(
// //         preferredSize: const Size.fromHeight(100.0),
// //         child: AppBar(
// //           flexibleSpace: Container(
// //             decoration: const BoxDecoration(
// //               gradient: LinearGradient(
// //                 colors: [Colors.amber, Colors.orange, Colors.green],
// //                 begin: Alignment.topLeft,
// //                 end: Alignment.bottomRight,
// //               ),
// //             ),
// //           ),
// //           leading: IconButton(
// //             icon: SvgPicture.asset('assets/backarrow.svg'),
// //             onPressed: () {
// //               Navigator.of(context).pop(); // Handle back navigation
// //             },
// //           ),
// //           title: Row(
// //             children: [
// //               CircleAvatar(
// //                 radius: 18,
// //                 backgroundImage: AssetImage('assets/profile.png'),
// //               ),
// //               const SizedBox(width: 8),
// //               const Expanded(
// //                 child: Text(
// //                   "Tommy's Group",
// //                   overflow: TextOverflow.ellipsis,
// //                 ),
// //               ),
// //             ],
// //           ),
// //           actions: [
// //             Padding(
// //               padding: const EdgeInsets.all(8.0),
// //               child: SvgPicture.asset(
// //                 'assets/threedot.svg',
// //                 width: 24,
// //                 height: 24,
// //               ),
// //             ),
// //           ],
// //           backgroundColor: Colors.transparent,
// //         ),
// //       ),
// //       body: Container(
// //         decoration: BoxDecoration(
// //           image: DecorationImage(
// //             image: AssetImage('assets/bgchat.png'),
// //             fit: BoxFit.cover,
// //           ),
// //         ),
// //         child: Column(
// //           children: [
// //             Expanded(
// //               child: ListView.builder(
// //                 itemCount: messages.length,
// //                 itemBuilder: (context, index) {
// //                   final message = messages[index];
// //                   return ChatBubble(
// //                     message: message.content,
// //                     sender: message.sender,
// //                     timestamp: message.timestamp,
// //                     isSender: message.isSender,
// //                   );
// //                 },
// //               ),
// //             ),
// //             MessageInput(),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // // }
// // import 'package:flutter/material.dart';
// // import 'package:flutter_bloc/flutter_bloc.dart';
// // import 'package:flutter_svg/flutter_svg.dart'; // Import for SVG
// // import '../../blocs/presentation/message_bloc.dart';
// // import '../../blocs/presentation/message_event.dart';
// // import '../../blocs/presentation/message_state.dart';
// // import '../../widgets/chat_bubble.dart';
// // import '../../widgets/message_input.dart';
// // import '../../data/models/message_model.dart';

// // class ChatScreen extends StatelessWidget {
// //   const ChatScreen({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     // Static Messages
// //     final List<MessageModel> messages = [
// //       MessageModel(
// //         content: "Hi how are you?",
// //         sender: "Lousiana",
// //         timestamp: DateTime.now().subtract(Duration(minutes: 10)),
// //         isSender: false,
// //       ),
// //       MessageModel(
// //         content: "@Tommy Feeling ok?",
// //         sender: "Lousiana",
// //         timestamp: DateTime.now().subtract(Duration(minutes: 8)),
// //         isSender: false,
// //       ),
     
// //        MessageModel(
// //         content: "Yes, I'm good. thanks for askings.Didn't do much, feeling bit sick after that meal.So just exhausted.watching netflux,",
// //         sender: "Tommy",
// //         timestamp: DateTime.now().subtract(Duration(minutes: 6)),
// //         isSender: false,
// //       ),
// //        MessageModel(
// //         content: "Yes Im well.Had a long day. went hiking with the some people.it was extremely hot couldn't be b...",
// //         sender: "Tommy",
// //         timestamp: DateTime.now().subtract(Duration(minutes: 6)),
// //         isSender: true,
// //       ),
// //       MessageModel(
// //         content: "Yes, I'm good. thanks for askings.Didn't do much, feeling bit sick after that meal.So just exhausted.watching netflux", 
// //         sender: "Cristofer",
// //         timestamp: DateTime.now().subtract(Duration(minutes: 4)),
// //         isSender: false,
// //       ),
// //        MessageModel(
// //         content: "Hi how are you?",
// //         sender: "Lousiana",
// //         timestamp: DateTime.now().subtract(Duration(minutes: 10)),
// //         isSender: false,
// //       ),
// //        MessageModel(
// //         content: "Yes, I'm good. thanks for askings.Didn't do much, feeling bit sick after that meal.So just exhausted.watching netflux",
// //         sender: "Tommy",
// //         timestamp: DateTime.now().subtract(Duration(minutes: 6)),
// //         isSender: false,
// //       ),
// //    MessageModel(
// //         content: "Yes, I'm good. thanks for askings.Didn't do much, feeling bit sick after that meal.So just exhausted.watching netflux",
// //         sender: "Cristofer",
// //         timestamp: DateTime.now().subtract(Duration(minutes: 4)),
// //         isSender: false,
// //       ),
// //         MessageModel(
// //         content: "Yes, I'm well. Had a long day. went hiking with the some people. was extremely hot couldn't be b...",
// //         sender: "Tommy",
// //         timestamp: DateTime.now().subtract(Duration(minutes: 6)),
// //         isSender: true,
// //       ),
// //          MessageModel(
// //         content: "Hi how are you?",
// //         sender: "Lousiana",
// //         timestamp: DateTime.now().subtract(Duration(minutes: 10)),
// //         isSender: false,
// //       ),
// //     ];

// // return Scaffold(
// //             appBar: AppBar(
// //         toolbarHeight: 56,                         // <- smaller height
// //         backgroundColor: Colors.transparent,
// //         elevation: 0,
// //         leadingWidth: 44,
// //         leading: IconButton(
// //           icon: SvgPicture.asset('assets/backarrow.svg'),
// //           onPressed: () => Navigator.of(context).pop(),
// //         ),
// //         titleSpacing: 0,
// //         title: Row(
// //           children: [
// //             const CircleAvatar(
// //               radius: 18,
// //               backgroundImage: AssetImage('assets/profile.png'),
// //             ),
// //             const SizedBox(width: 8),
// //             const Expanded(
// //               child: Text("Tommy's Group",
// //                   overflow: TextOverflow.ellipsis,
// //                   style: TextStyle(fontWeight: FontWeight.bold)),
// //             ),
// //           ],
// //         ),
// //         actions: [
// //           Padding(
// //             padding: const EdgeInsets.only(right: 12),
// //             child: SvgPicture.asset('assets/threedot.svg', width: 8, height: 8),
// //           ),
// //         ],
// //         flexibleSpace: Container(
// //           decoration: const BoxDecoration(
// //             gradient: LinearGradient(
// //               colors: [Color(0xFFFFD54F), Color(0xFFFFB84A), Color(0xFF64C19F)],
// //               begin: Alignment.topLeft,
// //               end: Alignment.bottomRight,
// //             ),
// //           ),
// //         ),
// //       ),

// //       // ─── BACKGROUND + CHAT LIST + INPUT ────────────────────────
// //       body: Stack(
// //         // decoration: const BoxDecoration(
// //         //   image: DecorationImage(
// //         //     image: AssetImage('assets/bgchat.png'),
// //         //     fit: BoxFit.cover,
// //         //   ),
// //         // ),
// //          children: [
// //     // Background color layer
// //     Container(
// //       decoration: const BoxDecoration(
// //         color: Color(0xFFFFF8DC), // Light Yellow Color (#FFF8DC)
// //       ),
// //     ),
// //     // Background image layer
// //     Container(
// //       decoration: const BoxDecoration(
// //         image: DecorationImage(
// //           image: AssetImage('assets/bgchat.png'),
// //           fit: BoxFit.cover,
// //         ),
// //       ),
// //     ),
// //          Column(
// //           children: [
// //             Expanded(
// //               child: ListView.builder(
// //                 padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
// //                 itemCount: messages.length,
// //                 itemBuilder: (_, i) {
// //                   final m = messages[i];
// //                   return ChatBubble(
// //                     message: m.content,
// //                     sender: m.sender,
// //                     timestamp: m.timestamp,
// //                     isSender: m.isSender,
// //                   );
// //                 },
// //               ),
// //             ),
// //             MessageInput(),
// //           ],
// //         ),
// //          ],
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_svg/flutter_svg.dart'; // Import for SVG
// import '../../blocs/presentation/message_bloc.dart';
// import '../../blocs/presentation/message_event.dart';
// import '../../blocs/presentation/message_state.dart';
// import '../../widgets/chat_bubble.dart';
// import '../../widgets/message_input.dart';
// import '../../data/models/message_model.dart';

// class TicketHeader extends StatelessWidget implements PreferredSizeWidget {
//   const TicketHeader({super.key});
//   @override
//   Size get preferredSize => const Size.fromHeight(64);
//   static const _bodyYellow = Color(0xFFFDC15A);
//   static const _tealBorder = Color(0xFFA7E0C5);

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       bottom: false,
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
       
//         child: Row(
//           children: [
//            Transform.translate(
//       offset: const Offset(-8, 0), // Adjust the -8 value to control the overflow
//       child: Image.asset(
//         'assets/u.png',
//         height: 50, // Adjust the size as needed
//       ),
//     ),
//     const TicketBackButton(), // ← refined stub
//             const SizedBox(width: 8),
//             Expanded(
//               child: Container(
//                 height: 56,
//                 decoration: BoxDecoration(
//                   color: _bodyYellow,
//                   border: Border.all(color: _tealBorder, width: 2),
//                   borderRadius: const BorderRadius.only(
//                     topLeft: Radius.circular(10), // slight curve like shot
//                     topRight: Radius.circular(10),
//                     bottomLeft: Radius.circular(34),
//                     bottomRight: Radius.circular(34),
//                   ),
//                 ),
//                 child: Row(
//                   children: [
//                     const SizedBox(width: 12),
//                     const CircleAvatar(
//                       radius: 18,
//                       backgroundImage: AssetImage('assets/profile.png'),
//                     ),
//                     const SizedBox(width: 12),
//                     const Expanded(
//                       child: Text(
//                         "Tommy’s Group",
//                         overflow: TextOverflow.ellipsis,
//                         style: TextStyle(
//                           fontSize: 16,
//                            fontFamily: 'Fraunces', // Use Fraunces font
//                           fontWeight: FontWeight.w700,
//                         ),
//                       ),
//                     ),
//                    SvgPicture.asset(
//                   'assets/threedot.svg',
//                   width: 7,
//                   height: 7,
//                 ),
//                     const SizedBox(width: 16),
                    
//                   ],
//                   ),
                
//               ),
              
//             ),
    
//           ],
//         ),
        
//       ),
      
//     );
    
//   }
// }

// class TicketBackButton extends StatelessWidget {
//   const TicketBackButton({super.key, this.onTap});
//   final VoidCallback? onTap;

//   // colours
//  static const _bodyOrange = Color(0xFFFBB428);

//   static const _tealBorder = Color(0xFF86BFB4);
//   static const _arrowTeal = Color(0xFF246153);

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap ?? () => Navigator.maybePop(context),
//       child: CustomPaint(
//         painter: _StubPainter(
//           fill: _bodyOrange,
//           stroke: _tealBorder,
//         ),
//         child: ClipPath(
//           clipper: _WaterfallClipper(),
//           child: const SizedBox(
//             width: 66, // Adjust size if needed
//             height: 50,
//             child: Center(
//               child: Icon(Icons.chevron_left, size: 30, color: _arrowTeal),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// /// Paints the teal outline.
// class _StubPainter extends CustomPainter {
//   const _StubPainter({required this.fill, required this.stroke});
//   final Color fill, stroke;

//   @override
//   void paint(Canvas canvas, Size size) {
//     final path = _WaterfallClipper().getClip(size);
//     canvas
//       ..drawPath(path, Paint()..color = fill)
//       ..drawPath(
//         path,
//         Paint()
//           ..color = stroke
//           ..style = PaintingStyle.stroke
//           ..strokeWidth = 2,
//       );
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
// }

// class _WaterfallClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     final r = size.height * 0.12; // Radius for waterfall curve
//     final w = size.width, h = size.height;

//     return Path()
//       ..moveTo(0, 0) // Start from the top-left corner
//       ..lineTo(w - r, 0) // Move towards the top-right, leaving space for rounding
//       ..lineTo(w, 0) // Move straight to the top-right corner (no rounding)
//       ..lineTo(w, h - r) // Move vertically down to the bottom-right, leaving space for rounding
//       ..lineTo(w, h) // Move straight down to close the bottom-right
//       ..lineTo(r, h) // Move horizontally to the bottom-left, leaving space for rounding
//       ..arcToPoint(
//         Offset(0, h - r), // Create the waterfall drop at the bottom-left
//         radius: Radius.circular(r),
//         clockwise: true,
//       )
//       ..lineTo(0, r) // Move vertically up towards the top-left corner, leaving space for rounding
//       ..arcToPoint(
//         Offset(r, 0), // Round the top-left corner
//         radius: Radius.circular(r),
//         clockwise: true,
//       )
//       ..close(); // Close the path back to the top-left
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
// }

// class ChatScreen extends StatelessWidget {
//   const ChatScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // Static Messages
//     final List<MessageModel> messages = [
      
//       MessageModel(
//         content: "Hi how are you?",
//         sender: "Lousiana",
//         timestamp: DateTime.now().subtract(Duration(minutes: 10)),
//         isSender: false,
//       ),
//       MessageModel(
//         content: "@Tommy Feeling ok?",
//         sender: "Lousiana",
//         timestamp: DateTime.now().subtract(Duration(minutes: 8)),
//         isSender: false,
//       ),
//       MessageModel(
//         content: "Yes, I'm good. thanks for askings.Didn't do much, feeling bit sick after that meal.So just exhausted.watching netflux,😢",
//         sender: "Tommy",
//         timestamp: DateTime.now().subtract(Duration(minutes: 6)),
//         isSender: false,
//       ),
//       MessageModel(
//         content: "Yes Im well.Had a long day. went hiking with the some people.it was extremely hot couldn't be b...",
//         sender: "Tommy",
//         timestamp: DateTime.now().subtract(Duration(minutes: 6)),
//         isSender: true,
//       ),
//       MessageModel(
//         content: "Yes, I'm good. thanks for askings.Didn't do much, feeling bit sick after that meal.So just exhausted.watching netflux", 
//         sender: "Cristofer",
//         timestamp: DateTime.now().subtract(Duration(minutes: 4)),
//         isSender: false,
//       ),
//       MessageModel(
//         content: "Hi how are you?",
//         sender: "Lousiana",
//         timestamp: DateTime.now().subtract(Duration(minutes: 10)),
//         isSender: false,
//       ),
      
//       MessageModel(
//         content: "Yes, I'm good. thanks for askings.Didn't do much, feeling bit sick after that meal.So just exhausted.watching netflux",
//         sender: "Tommy",
//         timestamp: DateTime.now().subtract(Duration(minutes: 6)),
//         isSender: false,
//       ),
//       MessageModel(
//         content: "Yes, I'm good. thanks for askings.Didn't do much, feeling bit sick after that meal.So just exhausted.watching netflux",
//         sender: "Cristofer",
//         timestamp: DateTime.now().subtract(Duration(minutes: 4)),
//         isSender: false,
//       ),
//       MessageModel(
//         content: "Yes, I'm well. Had a long day. went hiking with the some people. was extremely hot couldn't be b...",
//         sender: "Tommy",
//         timestamp: DateTime.now().subtract(Duration(minutes: 6)),
//         isSender: true,
//       ),
//       MessageModel(
//         content: "Hi how are you?",
//         sender: "Lousiana",
//         timestamp: DateTime.now().subtract(Duration(minutes: 10)),
//         isSender: false,
//       ),
//     ];

// //     return Scaffold(
// //         backgroundColor: const Color(0xFFFFF8DC),
// //       appBar: TicketHeader(), 
// //       body: Stack(
// //         children: [
// //           Positioned.fill(
// //             child: Container(
// //               color: const Color(0xFFFFF8DC), // Light Yellow Color (#FFF8DC)
// //             ),
// //           ),       
// // Positioned(
// //   top: -50, 
// //   left: 0,
// //   right: 0,
// //   bottom: 0,
// //   child: Container(
// //     decoration: const BoxDecoration(
// //       image: DecorationImage(
// //         image: AssetImage('assets/bgchat.png'),
// //         fit: BoxFit.cover,
// //       ),
// //     ),
// //   ),
// // ),

// //           Column(
// //             children: [
// //               Expanded(
// //                 child: ListView.builder(
// //                   padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
// //                   itemCount: messages.length+2,
// //                   itemBuilder: (_, i) {
// //   if (i == 0) {
// //       return Padding(
// //         padding: const EdgeInsets.symmetric(vertical: 10),
// //         child: Center(
// //           child: Text(
// //             "10 July 2025",
// //             style: TextStyle(
// //               color: Color(0xFF0C201D), // #0C201D color with full opacity
// //               fontWeight: FontWeight.w600,
// //               fontFamily: 'Fraunces', // Font weight
// //               fontSize: 12, // Adjust the font size as needed
// //             ),
// //           ),
// //         ),
// //       );
// //     }

// //     // Insert date text after every 5th message
// //        if (i == 7) {
// //       return Padding(
// //         padding: const EdgeInsets.symmetric(vertical: 10),
// //         child: Center(
// //           child: Text(
// //             "11 July 2025",
// //             style: TextStyle(
// //               color: Color(0xFF0C201D), // #0C201D color with full opacity
// //               fontWeight: FontWeight.w600,
// //               fontFamily: 'Fraunces', // Font weight
// //               fontSize: 12, // Adjust the font size as needed
// //             ),
// //           ),
// //         ),
// //       );
// //     }

// //                     // final m = messages[i];
// //                        final messageIndex = i - (i > 0 && i < 7 ? 1 : 2);
// //     final m = messages[messageIndex];
// //                     return ChatBubble(
// //                       message: m.content,
// //                       sender: m.sender,
// //                       timestamp: m.timestamp,
// //                       isSender: m.isSender,
// //                     );
// //                   },
// //                 ),
// //               ),
// //               MessageInput(),
// //             ],
// //           ),
// //         ],
// //       ),
// //     );
//  return Scaffold(
//       backgroundColor: const Color(0xFFFFF8DC),
//       body: Stack(
//         children: [
//           // Background image layer (positioned behind the header)
//           Positioned(
//             top: 0,
//             left: 0,
//             right: 0,
//             bottom: 0,
//             child: Container(
//               decoration: const BoxDecoration(
//                 image: DecorationImage(
//                   image: AssetImage('assets/bgchat.png'),
//                   fit: BoxFit.cover,
//                   alignment: Alignment.topCenter, // Align the image at the top center
//                 ),
//               ),
//             ),
//           ),
//           // Chat content
//           Column(
//             children: [
//               // Header with background image behind
//               const SizedBox(height: 14), // Space for header
//               TicketHeader(), // Place the header here after the background image
//               Expanded(
//                 child: ListView.builder(
//                   padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
//                   itemCount: messages.length + 2,
//                   itemBuilder: (_, i) {
//                     if (i == 0) {
//                       return Padding(
//                         padding: const EdgeInsets.symmetric(vertical: 10),
//                         child: Center(
//                           child: Text(
//                             "10 July 2025",
//                             style: TextStyle(
//                               color: Color(0xFF0C201D),
//                               fontWeight: FontWeight.w600,
//                               fontFamily: 'Fraunces',
//                               fontSize: 12,
//                             ),
//                           ),
//                         ),
//                       );
//                     }

//                     // Insert date text after every 5th message
//                     if (i == 7) {
//                       return Padding(
//                         padding: const EdgeInsets.symmetric(vertical: 10),
//                         child: Center(
//                           child: Text(
//                             "11 July 2025",
//                             style: TextStyle(
//                               color: Color(0xFF0C201D),
//                               fontWeight: FontWeight.w600,
//                               fontFamily: 'Fraunces',
//                               fontSize: 12,
//                             ),
//                           ),
//                         ),
//                       );
//                     }

//                     final messageIndex = i - (i > 0 && i < 7 ? 1 : 2);
//                     final m = messages[messageIndex];
//                     return ChatBubble(
//                       message: m.content,
//                       sender: m.sender,
//                       timestamp: m.timestamp,
//                       isSender: m.isSender,
//                     );
//                   },
//                 ),
//               ),
//               MessageInput(),
//             ],
//           ),
//         ],
//       ),
//     );
  
//   }
// }
     
// class TextWithStrokePainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     final text = "10 July 2025";
//     final textStyle = TextStyle(
//       fontFamily: 'Fraunces', // Use Fraunces font
//       fontSize: 16,  // Adjust font size to match your example
//       fontWeight: FontWeight.w600,
//       color: const Color(0xFF0C201D), // Text color (#0C201D)
//     );

//     final borderPaint = Paint()
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = 2  // Stroke width of 2
//       ..color = const Color(0xFF72D6C6); // Border color (#72D6C6)

//     final textPainter = TextPainter(
//       text: TextSpan(
//         text: text,
//         style: textStyle,
//       ),
//       textDirection: TextDirection.ltr,
//     );

//     textPainter.layout();

//     // Calculate the position to center the text within the available width and height
//     final offset = Offset(
//       (size.width - textPainter.width) / 2,
//       (size.height - textPainter.height) / 2,
//     );
    
//     // Paint the stroke (border) first
//     textPainter.paint(canvas, offset);

//     // Now paint the regular text color over the stroke
//     final fillTextPainter = TextPainter(
//       text: TextSpan(
//         text: text,
//         style: textStyle.copyWith(color: const Color(0xFF0C201D)), // Text color
//       ),
//       textDirection: TextDirection.ltr,
//     );

//     fillTextPainter.layout();
//     fillTextPainter.paint(canvas, offset);
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) => false;
// }
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Import for SVG
import '../../blocs/presentation/message_bloc.dart';
import '../../blocs/presentation/message_event.dart';
import '../../blocs/presentation/message_state.dart';
import '../../widgets/chat_bubble.dart';
import '../../widgets/message_input.dart';
import '../../data/models/message_model.dart';

class TicketHeader extends StatelessWidget implements PreferredSizeWidget {
  const TicketHeader({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(64);

  static const _bodyYellow = Color(0xFFFDC15A);
  static const _tealBorder = Color(0xFFA7E0C5);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8), // No horizontal padding to shift left
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start, // Align to the left side
          children: [
            // Combine the image and back button without extra gap
            Row(
              mainAxisSize: MainAxisSize.min, // Ensures no extra space is added
              children: [
                // Image (u.png) directly next to the back button
                Image.asset(
                  'assets/abc.png', // Image asset path
                  // width: 10, // Adjust the size of the image as needed
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
                  border: Border.all(color: _tealBorder, width: 2),
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
                    const Expanded(
                      child: Text(
                        "Tommy’s Group",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Fraunces',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SvgPicture.asset(
                      'assets/threedot.svg',
                      width: 7,
                      height: 7,
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
            width: 60, // Adjust size if needed
            height: 49,
            child: Row(
              children: [
                // Back icon
                Expanded(
                  child: Center(
                    child: Icon(Icons.chevron_left, size: 30, color: _arrowTeal),
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
        timestamp: DateTime.now().subtract(Duration(minutes: 10)),
        isSender: false,
      ),
      MessageModel(
        content: "@Tommy Feeling ok?",
        sender: "Lousiana",
        timestamp: DateTime.now().subtract(Duration(minutes: 8)),
        isSender: false,
      ),
      MessageModel(
        content: "Yes, I'm good. thanks for askings.Didn't do much, feeling bit sick after that meal.So just exhausted.watching netflux,😢",
        sender: "Tommy",
        timestamp: DateTime.now().subtract(Duration(minutes: 6)),
        isSender: false,
      ),
      MessageModel(
        content: "Yes Im well.Had a long day. went hiking with the some people.it was extremely hot couldn't be b...",
        sender: "Tommy",
        timestamp: DateTime.now().subtract(Duration(minutes: 6)),
        isSender: true,
      ),
      MessageModel(
        content: "Yes, I'm good. thanks for askings.Didn't do much, feeling bit sick after that meal.So just exhausted.watching netflux", 
        sender: "Cristofer",
        timestamp: DateTime.now().subtract(Duration(minutes: 4)),
        isSender: false,
      ),
      MessageModel(
        content: "Hi how are you?",
        sender: "Lousiana",
        timestamp: DateTime.now().subtract(Duration(minutes: 10)),
        isSender: false,
      ),
      
      MessageModel(
        content: "Yes, I'm good. thanks for askings.Didn't do much, feeling bit sick after that meal.So just exhausted.watching netflux",
        sender: "Tommy",
        timestamp: DateTime.now().subtract(Duration(minutes: 6)),
        isSender: false,
      ),
      MessageModel(
        content: "Yes, I'm good. thanks for askings.Didn't do much, feeling bit sick after that meal.So just exhausted.watching netflux",
        sender: "Cristofer",
        timestamp: DateTime.now().subtract(Duration(minutes: 4)),
        isSender: false,
      ),
      MessageModel(
        content: "Yes, I'm well. Had a long day. went hiking with the some people. was extremely hot couldn't be b...",
        sender: "Tommy",
        timestamp: DateTime.now().subtract(Duration(minutes: 6)),
        isSender: true,
      ),
      MessageModel(
        content: "Hi how are you?",
        sender: "Lousiana",
        timestamp: DateTime.now().subtract(Duration(minutes: 10)),
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
                          child: Text(
                            "10 July 2025",
                            style: TextStyle(
                              color: Color(0xFF0C201D),
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Fraunces',
                              fontSize: 12,
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
                          child: Text(
                            "11 July 2025",
                            style: TextStyle(
                              color: Color(0xFF0C201D),
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Fraunces',
                              fontSize: 12,
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
                      timestamp: m.timestamp,
                      isSender: m.isSender,
                    );
                  },
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