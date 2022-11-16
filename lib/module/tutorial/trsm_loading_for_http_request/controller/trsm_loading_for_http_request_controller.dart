import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/trsm_loading_for_http_request_view.dart';

class TrsmLoadingForHttpRequestController
    extends State<TrsmLoadingForHttpRequestView> implements MvcController {
  static late TrsmLoadingForHttpRequestController instance;
  late TrsmLoadingForHttpRequestView view;

  @override
  void initState() {
    instance = this;
    super.initState();
    loadUsers();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List userList = [];
  bool loading = false;

  loadUsers() async {
    loading = true;
    userList = [];
    setState(() {});

    await Future.delayed(const Duration(seconds: 2));

    var response = await Dio().get(
      "https://reqres.in/api/users",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;
    userList = obj["data"];

    loading = false;
    setState(() {});
  }
}
