import 'dart:async';

import 'package:textme/src/models/status.dart';
import 'package:textme/src/models/status_list.dart';
import 'package:http/http.dart' as http;

String url = 'https://hanmajid.com/api/statuses';

class StatusService {
  static Future<StatusList> getStatuses() async {
    final response = await http.get('$url');
    return statusListFromJson(response.body);
  }

  static Future<Status> getStatus(int id) async {
    final response = await http.get('$url/$id');
    return statusFromJsonFull(response.body);
  }
}