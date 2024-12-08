import 'package:flutter/material.dart';

import 'callschedule_page.dart';

class NickNamePage extends StatelessWidget {
  final Function(String) onNickNameEntered;
  final TextEditingController _nicknameController = TextEditingController();

  NickNamePage({required this.onNickNameEntered});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              '안녕하세요.\n당신을 어떻게 불러드릴까요?',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 20),
            TextField(
              controller: _nicknameController,
              decoration: InputDecoration(
                labelText: '닉네임',
                hintText: '2~10자',
              ),
              maxLength: 10,
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}