import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:aqua/services/constants.dart';
import 'package:aqua/models/service_model.dart';

class ApiService {
  Future<ServiceModel?> getLitres(String id) async {
    try {
      var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.litresEndpoint + id);
      var response = await http.post(url);
      if (response.statusCode == 200) {
        ServiceModel _model = serviceModelFromJson(response.body);
        return _model;
      }
    } catch (e) {
      log(e.toString());
    }
  }
}