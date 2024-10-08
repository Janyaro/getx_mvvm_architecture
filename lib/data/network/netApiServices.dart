import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get_mvvm/data/appException.dart';
import 'package:get_mvvm/data/network/baseApiServices.dart';
import 'package:http/http.dart' as http;

class Netapiservices extends Baseapiservices {
  @override
  Future getApi(String url) async {
    dynamic responseDynamic;

    try {
      final response = await http.get(Uri.parse(url));
      responseDynamic = returnResponse(response);
    } on SocketException {
      throw internetException();
    } on TimeoutException {
      throw RequestTimeOut();
    }
    return responseDynamic;
  }

  @override
  Future postApi(var data, String url) async {
    dynamic responseDynamic;
    try {
      final response = await http.post(Uri.parse(url), body: jsonEncode(data));
      responseDynamic = returnResponse(response);
    } on SocketException {
      throw internetException();
    } on TimeoutException {
      throw RequestTimeOut();
    }
    return responseDynamic;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseDynamic = jsonDecode(response.body);
        return responseDynamic;
      case 400:
        throw InvalidUrl;
      default:
        throw '${response.statusCode}';
    }
  }
}
