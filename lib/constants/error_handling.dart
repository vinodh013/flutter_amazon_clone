import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter_amazon_clone/constants/utils.dart';
import "package:http/http.dart " as http;

void httpErrorHandler({
  required http.Response responce,
  required BuildContext context,
  required VoidCallback onSuccess,
}) {
  switch (responce.statusCode) {
    case 200:
      onSuccess();
      break;
    case 400:
      showSanckBar(context, jsonDecode(responce.body)['msg']);
      break;
    case 500:
      showSanckBar(context, jsonDecode(responce.body)['error']);
      break;
    default:
      showSanckBar(context, responce.body);
  }
}
