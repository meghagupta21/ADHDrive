import 'package:chatapp/widgets/LogoWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:chatapp/constants/text_helper.dart';
import 'package:chatapp/constants/app_color.dart';

class ChatScreen extends StatefulWidget {


  const ChatScreen({
    Key? key,

  }) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<String> senderMessages = [
    "Hey Doctor, am loosing weight very fast, dehydrating profusely as well i have tried some stuffs, nothing seems to be working",
    "Over 2 days now, but that of weight was around last week",
  ];

  List<String> receiverMessages = [
    "So sorry about how you feel and all you have been through, but not to worry am here to help you. When did you see these symptoms",
    "Ok, here are some little tips, I will suggest you have a bottle of water all times, force yourself to drink a lot of water even when not conducive Take fruits frequently and hey, dont stay alone all by yourself for the time being.",
  ];
  @override
  Widget build(BuildContext context) {
    List<String> combinedMessages = [];
    for (int i = 0; i < senderMessages.length || i < receiverMessages.length; i++) {
      if (i < senderMessages.length) {
        combinedMessages.add(senderMessages[i]);
      }
      if (i < receiverMessages.length) {
        combinedMessages.add(receiverMessages[i]);
      }
    }

    return Scaffold(
      backgroundColor: ColorsForApp.applightcolor,
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: combinedMessages.length,
              itemBuilder: (context, index) {
                bool isSenderMessage = index % 2 == 0;
                String message = combinedMessages[index];

                return ChatMessage(
                  message: message,
                  isSenderMessage: isSenderMessage,
                  onCopy: () {
                    Clipboard.setData(ClipboardData(text: message));
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Message copied to clipboard'),
                      ),
                    );
                  },
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ChatInputField(),
          ),
        ],
      ),
    );
  }
}

class ChatMessage extends StatelessWidget {
  final String message;
  final bool isSenderMessage;
  final VoidCallback onCopy;

  const ChatMessage({
    Key? key,
    required this.message,
    required this.isSenderMessage,
    required this.onCopy,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListTile(
        //  trailing: LogoWidget(width: null, height: null, imagePath: '',),
          title: Padding(
            padding: isSenderMessage
                ? const EdgeInsets.only(left: 50, right: 8, top: 8, bottom: 8)
                : const EdgeInsets.only(right: 50, left: 8, top: 8, bottom: 8),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(message),
              ),
            ),
          ),
        ),
        if (isSenderMessage)
          Positioned(
            bottom: 0,
            right: 0,
            child: IconButton(
              icon: Icon(Icons.copy),
              onPressed: onCopy,
            ),
          ),
      ],
    );
  }
}

class ChatInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          IconButton(
            icon: Icon(Icons.mic, size: 20),
            onPressed: () {
              // Handle voice message
            },
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Hier schreiben...',
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.white,
                suffixIcon: Icon(Icons.send), // Use suffixIcon for the icon
              ),
              style: TextHelper.h6.copyWith(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
