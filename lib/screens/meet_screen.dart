import 'package:flutter/material.dart';

class MeetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meet'),
        backgroundColor: Colors.green,
        actions: [
          // Change the IconButton to display an asset image
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 15,
              // Add your profile picture here
              backgroundImage: AssetImage('images/pic.jpg'),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 2),
                  Text(
                    'Lahza fathima',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'lahzafathimaav@gmail.com',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: const Text('Starred'),
              onTap: () {
                // Handle drawer item click if needed
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Sent'),
              onTap: () {
                // Handle drawer item click if needed
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Drafts'),
              onTap: () {
                // Handle drawer item click if needed
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Spam'),
              onTap: () {
                // Handle drawer item click if needed
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Bin'),
              onTap: () {
                // Handle drawer item click if needed
                Navigator.pop(context);
              },
            ),
            // Add more drawer items as needed
          ],
        ),
      ),
      body: Center(
        child: Text('get a link that you can share'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Show Snackbar
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Start a new Meet feature in progress'),
            ),
          );
        },
        child: Icon(Icons.video_call),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Mails',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_call),
            label: 'Meet',
          ),
        ],
        currentIndex: 1, // Set the initial tab index for Meet screen
        onTap: (index) {
          // Handle tab switch
          if (index == 1) {
            // Navigate to the Meet screen when the "Meet" tab is tapped
            Navigator.pushNamed(context, '/meet');
          } else {
            // Navigate to the Mail screen for other tabs
            Navigator.pushNamed(context, '/mail');
          }
        },
      ),
    );
  }
}
