
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