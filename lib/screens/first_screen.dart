import 'package:flutter/material.dart';
import 'package:input_validation/utils/dector.dart'; // Import custom validators
import 'second_screen.dart'; // Navigate to the second screen

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}
// 
class _FirstScreenState extends State<FirstScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController(); // Create a controller for the name field
  final TextEditingController _emailController = TextEditingController(); // Create a controller for the email field
  final TextEditingController _phoneController = TextEditingController(); // Create a controller for the phone field

  @override
  void dispose() {
    _nameController.dispose(); // Dispose the name controller
    _emailController.dispose(); // Dispose the email controller
    _phoneController.dispose(); // Dispose the phone controller
    super.dispose();
  }

  void _navigateToSecondScreen() {
    if (_formKey.currentState!.validate()) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SecondScreen(
            name: _nameController.text,
            email: _emailController.text,
            phone: _phoneController.text,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Name'),
                validator: Validators.validateName, // Validate name
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'Email'),
                validator: Validators.validateEmail, // Validate email
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: _phoneController,
                decoration: InputDecoration(labelText: 'Phone Number'),
                keyboardType: TextInputType.phone,
                validator: Validators.validatePhone, // Validate phone number
              ),
              SizedBox(height: 24),
              ElevatedButton(
                onPressed: _navigateToSecondScreen,
                child: Text('Next', style: TextStyle(fontSize: 16),selectionColor: Colors.red),
              ),
            ],
          ),
        ),
      ),
    );
  }
}