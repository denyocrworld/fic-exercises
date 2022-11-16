import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/trsm_chat_list_view.dart';

class TrsmChatListController extends State<TrsmChatListView>
    implements MvcController {
  static late TrsmChatListController instance;
  late TrsmChatListView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List chatList = [
    {
      "name": "Deny",
      "message": "Hello bro",
      "read": true,
    },
    {
      "name": "Danu",
      "message": "Yes, apa kabar?",
      "read": true,
    },
    {
      "name": "Deny",
      "message": "Ok bro, gua mau tanya soal Flutter, ada waktu?",
      "read": false,
    },
    {
      "name": "Deny",
      "message": "Terkait state management di Riverpod",
      "read": false,
    },
    {
      "name": "Deny",
      "message": "Kabari bro kalo luang",
      "read": false,
    }
  ];
}
