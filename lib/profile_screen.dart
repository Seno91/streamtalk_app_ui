import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/bg/bg.png"),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 10),
          Container(
            height: 100,
            width: 100,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                    "assets/images/details/WhatsApp Image 2024-10-08 at 16.47.02.jpeg"),
              ),
              shape: BoxShape.circle,
              color: Colors.green,
            ),
          ),
          const Text(
            "@Toni",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w800,
            ),
          ),
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
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
                }),
          ),
        ],
      ),
    );
  }
}
