import 'package:flutter/material.dart';

class MailListItem extends StatefulWidget {
  final int index;
  final bool isMeet;

  MailListItem({required this.index, required this.isMeet});

  @override
  _MailListItemState createState() => _MailListItemState();
}

class _MailListItemState extends State<MailListItem> {
  bool isStarred = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Mail ${widget.index}'),
      subtitle: Text('This is the email content for Mail ${widget.index}'),
      trailing: IconButton(
        icon: isStarred
            ? Icon(Icons.star, color: Colors.yellow)
            : Icon(Icons.star_border),
        onPressed: () {
          setState(() {
            // Toggle the starred status
            isStarred = !isStarred;
          });
        },
      ),
      onTap: () {
        // Handle tapping on the email
      },
    );
  }
}
