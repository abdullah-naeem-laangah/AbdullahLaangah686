import 'package:flutter/material.dart';

class ChangeNameCard extends StatelessWidget {
  const ChangeNameCard({
    super.key,
    required this.myText,
    required TextEditingController nameController,
  }) : _nameController = nameController;

  final String myText;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children:<Widget> [
        Image.network("https://images.unsplash.com/photo-1682695795557-17447f921f79?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHw2fHx8ZW58MHx8fHx8&auto=format&fit=crop&w=500&q=60",
          fit: BoxFit.cover,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          myText, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20
        ),),
        SizedBox(
          height: 20,
        ),
        Padding(padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: _nameController,
            //keyboardType: TextInputType.number,
            decoration: InputDecoration(
                hintText:"a  rehamna",
                border: OutlineInputBorder(),
                labelText: "Name"
            ),

          ),
        )
      ],
    );
  }
}