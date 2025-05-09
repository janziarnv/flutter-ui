import 'package:flutter/material.dart';

class MainFeedPage extends StatefulWidget {
  @override
  _MainFeedPageState createState() => _MainFeedPageState();
}

class _MainFeedPageState extends State<MainFeedPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,  // Set top AppBar color to white
        elevation: 0,
        centerTitle: true,
        title: Image.asset(
          'assets/images/logo.png', // Instagram Logo Image
          width: 120, // Adjust width as needed
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.camera_alt, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          // Stories Row (Baris Story)
          Container(
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 10),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CircleAvatar(radius: 30, backgroundImage: AssetImage('assets/images/pp1.png')),
                CircleAvatar(radius: 30, backgroundImage: AssetImage('assets/images/pp2.png')),
                CircleAvatar(radius: 30, backgroundImage: AssetImage('assets/images/pp1.png')),
              ],
            ),
          ),
          // Post Feed
          PostWidget(
            username: 'Janziarnanda',
            location: 'Jepara, Indonesia',
            image: 'assets/images/postingan.jpeg',
            caption: 'Tertawa tanpa beban... seperti tugas kuliah yang pura-pura lupa.',
            likes: '9,876',
            comments: 'Liked by Gojo and 10,000 others',
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Colors.black,  // Black background for bottom navigation
        selectedItemColor: Colors.white, // White color for selected item
        unselectedItemColor: Colors.white70, // Slightly faded white for unselected items
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/home.png', width: 30, height: 30), // Home Icon
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/search.png', width: 30, height: 30), // Search Icon
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/addpost.png', width: 30, height: 30), // Add Post Icon
            label: 'Add Post',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/likes.png', width: 30, height: 30), // Likes Icon
            label: 'Likes',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(radius: 15, backgroundImage: AssetImage('assets/images/pp1.png')), // Profile Icon
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class PostWidget extends StatelessWidget {
  final String username;
  final String location;
  final String image;
  final String caption;
  final String likes;
  final String comments;

  PostWidget({
    required this.username,
    required this.location,
    required this.image,
    required this.caption,
    required this.likes,
    required this.comments,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Username and Location
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            children: [
              CircleAvatar(radius: 20, backgroundImage: AssetImage('assets/images/pp1.png')),
              SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(username, style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(location, style: TextStyle(fontSize: 12, color: Colors.grey)),
                ],
              ),
              Spacer(),
              IconButton(
                icon: Icon(Icons.more_horiz),
                onPressed: () {},
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        // Post Image
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(image),
        ),
        SizedBox(height: 10),
        // Interaction: Like, Comment, Share
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            children: [
              IconButton(
                icon: Icon(Icons.favorite_border, size: 30),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.comment, size: 30),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.send, size: 30),
                onPressed: () {},
              ),
              Spacer(),
              IconButton(
                icon: Icon(Icons.bookmark_border, size: 30),
                onPressed: () {},
              ),
            ],
          ),
        ),
        // Caption and Likes
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(caption),
              SizedBox(height: 5),
              Text('$likes Likes', style: TextStyle(fontWeight: FontWeight.bold)),
              Text(comments),
            ],
          ),
        ),
      ],
    );
  }
}
