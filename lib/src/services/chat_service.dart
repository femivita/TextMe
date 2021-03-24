import 'dart:async';

import 'package:textme/src/models/chat.dart';
import 'package:textme/src/models/chat_list.dart';
import 'package:http/http.dart' as http;

String url = 'https://hanmajid.com/api/chats';

class ChatService {
  static Future<ChatList> getChats() async {
    final response = await http.get('$url');
    return chatListFromJson(response.body);
  }

  static Future<Chat> getChat(int id) async {
    final response = await http.get('$url/$id');
    return chatFromJsonFull(response.body);
  }

  static Future<Chat> updateChat(int id, String message) async {
    final response = await http.post('$url/$id', body: {'message': message});
    return chatFromJsonFull(response.body);
  }
}