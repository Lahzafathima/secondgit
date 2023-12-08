import 'package:flutter/material.dart';
import '../widgets/mail_list_item.dart';

class MailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gmail Clone'),
        backgroundColor: Colors.red,
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
      body: ListView.builder(
        itemCount: 15,
        itemBuilder: (context, index) {
          return MailListItem(index: index, isMeet: false);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Show Snackbar
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Compose feature in progress'),
            ),
          );
        },
        child: Icon(Icons.edit_outlined),
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
        currentIndex: 0, // Set the initial tab index
        onTap: (index) {
          // Use Navigator to push a new screen based on the selected tab
          if (index == 0) {
            // Navigate to MailScreen (you can skip this if you're already on MailScreen)
            Navigator.pushReplacementNamed(context, '/mail');
          } else if (index == 1) {
            // Navigate to a new MeetScreen when the "Meet" tab is tapped
            Navigator.pushReplacementNamed(context, '/meet');
          }
        },
      ),
    );
  }
}
