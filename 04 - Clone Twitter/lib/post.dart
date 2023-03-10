import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class Post extends StatelessWidget {
  final Map postInfo;
  final int index;

  Post({super.key, required this.postInfo, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      // ↓ Widget para deixar uma altura baseada no conteúdo do child
      child: IntrinsicHeight(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage("https://fakeface.rest/face/view?rand=" + index.toString()),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(postInfo['autor'], style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(width: 5),
                            Text('@' + postInfo['autor'].toLowerCase().replaceAll(" ", "").substring(0, 5)),
                            SizedBox(width: 5),
                            Text('• 00:00'),
                            Spacer(),
                            SizedBox(
                              height: 20,
                              width: 20,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Ionicons.ellipsis_horizontal, color: Colors.grey),
                                iconSize: 15,
                                padding: EdgeInsets.only(bottom: 5),
                                splashRadius: 10,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Text(postInfo['frase']),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  height: 15,
                                  width: 30,
                                  child: IconButton(
                                    padding: EdgeInsets.all(0),
                                    onPressed: () {},
                                    icon: Icon(Ionicons.chatbubble_outline),
                                    iconSize: 15,
                                    splashRadius: 15,
                                  ),
                                ),
                                Text(postInfo['comments'].toString()),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  height: 15,
                                  width: 30,
                                  child: IconButton(
                                    padding: EdgeInsets.all(0),
                                    onPressed: () {},
                                    icon: Icon(Ionicons.repeat_outline),
                                    iconSize: 15,
                                    splashRadius: 15,
                                  ),
                                ),
                                Text(postInfo['retweets'].toString()),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  height: 15,
                                  width: 30,
                                  child: IconButton(
                                    padding: EdgeInsets.all(0),
                                    onPressed: () {},
                                    icon: Icon(Ionicons.heart_outline),
                                    iconSize: 15,
                                    splashRadius: 15,
                                  ),
                                ),
                                Text(postInfo['likes'].toString()),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  height: 15,
                                  width: 30,
                                  child: IconButton(
                                    padding: EdgeInsets.all(0),
                                    onPressed: () {},
                                    icon: Icon(Ionicons.share_outline),
                                    iconSize: 15,
                                    splashRadius: 15,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            Divider(thickness: 0.5)
          ],
        ),
      ),
    );
  }
}
