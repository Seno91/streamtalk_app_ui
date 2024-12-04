import 'package:flutter/material.dart';

class FeedContainerContent extends StatelessWidget {
  const FeedContainerContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(24)),
          color: Color.fromARGB(86, 118, 166, 173),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              "assets/images/graphs/napoleon-cover.jpg",
            ),
          ),
        ),
        height: 348,
        child: const Padding(
          padding: EdgeInsets.all(18),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.favorite,
                color: Colors.red,
                size: 32,
              ),
              Icon(
                Icons.send,
                color: Colors.red,
                size: 32,
              )
            ],
          ),
        ),
      ),
    );
  }
}
