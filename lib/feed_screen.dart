import 'package:flutter/material.dart';
import 'package:streamtalk_app_ui/feed_page_content.dart';
import 'package:streamtalk_app_ui/storys.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key, required List stories, required List posts})
      : _stories = stories,
        _posts = posts;

  final List _stories;
  final List _posts;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/bg/bg.png"),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            //StreamTalk Storys
            SizedBox(
              height: 104,
              child: ListView.builder(
                itemCount: _stories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const StorysCircle();
                },
              ),
            ),

            // StreamTalk Posts
            ListView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.all(12),
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _posts.length,
              itemBuilder: (context, index) {
                return const FeedContainerContent();
              },
            ),
          ],
        ),
      ),
    );
  }
}
