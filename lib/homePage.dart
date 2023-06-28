import "package:flutter/material.dart";

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> profileImages = [
    'images/1.jpg',
    'images/2.jpg',
    'images/3.jpg',
    'images/4.jpg',
    'images/5.jpg',
    'images/6.jpg',
    'images/7.jpg',
  ];

  List<String> posts = [
    'images/1.jpg',
    'images/2.jpg',
    'images/3.jpg',
    'images/4.jpg',
    'images/5.jpg',
    'images/6.jpg',
    'images/7.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'images/instagram-name.png',
          height: 50,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_circle_outline),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_border),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.chat_bubble_outline),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // story
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  7,
                  (index) => Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.green,
                          radius: 35,
                          child: CircleAvatar(
                            radius: 32,
                            backgroundImage: AssetImage(
                              profileImages[index],
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text('Profile name',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black87,
                            ))
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Divider(),
            Column(
              children: List.generate(
                7,
                (index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // header post
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          child: CircleAvatar(
                            backgroundColor: Colors.green,
                            radius: 14,
                            child: CircleAvatar(
                              radius: 12,
                              backgroundImage: AssetImage(
                                profileImages[index],
                              ),
                            ),
                          ),
                        ),
                        Text('Profile name'),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.more_vert),
                        )
                      ],
                    ),
                    // image post
                    Image.asset(posts[index]),
                    // footer post
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.favorite_border),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.chat_bubble_outline),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.label_outline),
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.bookmark_border),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              style: TextStyle(color: Colors.black),
                              children: [
                                TextSpan(text: 'Liked by'),
                                TextSpan(
                                  text: ' Profile name',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(text: ' and'),
                                TextSpan(text: ' others'),
                              ],
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              style: TextStyle(color: Colors.black),
                              children: [
                                TextSpan(
                                  text: ' Profile name',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      'Velit non laboris fugiat occaecat culpa. Cillum eiusmod sunt incididunt labore deserunt elit est magna commodo elit pariatur.',
                                ),
                              ],
                            ),
                          ),
                          Text('View all 12 comments',
                              style: TextStyle(color: Colors.black38))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
