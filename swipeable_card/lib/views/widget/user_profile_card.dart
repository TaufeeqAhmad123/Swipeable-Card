
import 'package:flutter/material.dart';
import 'package:swipeable_card/constant/app_const.dart';
import 'package:swipeable_card/constant/app_style.dart';


class UserProfileCard extends StatelessWidget {
  const UserProfileCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      margin: kpagePadding,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.teal.withOpacity(.1),
          Colors.grey.withOpacity(.2),
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://i.pinimg.com/564x/84/cf/6b/84cf6b5e76d7eba6a283d79ca9ca9e2d.jpg'),
                ),
                const SizedBox(width: 16),
                const Expanded(
                  child: Column(
                    children: [
                      Text(
                        'Michael Henderson',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Art, Nft',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            const SizedBox(height: 24),
            Text('Bids', style: Style.kBold14),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[700],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        'Purchase',
                        style: Style.kSemiBold16,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pinkAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        'Purchase',
                        style: Style.kSemiBold16,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ]),
    );
  }
}

