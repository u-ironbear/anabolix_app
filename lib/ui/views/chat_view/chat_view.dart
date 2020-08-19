import 'package:anabolix_app/ui/views/chat_view/chat_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ChatViewModel>.reactive(
      builder: (context, model, child) => Container(
        child: Center(
          child: Text('Chat View'),
        ),
      ),
      viewModelBuilder: () => ChatViewModel(),
    );
  }
}
