import 'package:flutter/material.dart';
import 'package:flutter_contacts/properties/group.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../models/chat_contact.dart';
import '../../auth/controller/auth_controller.dart';
import '../repository/chat_repository.dart';

final chatControllerProvider = Provider((ref) {
  final chatRepository = ref.watch(chatRepositoryProvider);
  return ChatController(
    chatRepository: chatRepository,
    ref: ref,
  );
});

class ChatController {
  final ChatRepository chatRepository;
  final ProviderRef ref;
  ChatController({
    required this.chatRepository,
    required this.ref,
  });
  Stream<List<ChatContact>> chatContacts() {
    return chatRepository.getChatContacts();
  }

  // Stream<List<Group>> chatGroups() {
  //   return chatRepository.getChatGroups();
  // }
  void sendTextMessage(
    BuildContext context,
    String text,
    String recieverUserId,
    // bool isGroupChat,
  ) {
    //final messageReply = ref.read(messageReplyProvider);
    ref.read(userDataAuthProvider).whenData(
          (value) => chatRepository.sendTextMessage(
            context: context,
            text: text,
            recieverUserId: '123',
            senderUser: value!,
            // messageReply: messageReply,
            //  isGroupChat: isGroupChat,
          ),
        );
    print(text + " " + recieverUserId + " ");
    // ref.read(messageReplyProvider.state).update((state) => null);
  }
}
