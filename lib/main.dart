import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: InputScreen(),
  ));
}

class InputScreen extends StatefulWidget {
  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController secondNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Screen'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: nameController,
                onChanged: (_) => setState(() {}), // Update UI when text changes
                decoration: InputDecoration(labelText: 'Enter Name'),
              ),
              SizedBox(height: 30.0),
              TextField(
                controller: mobileController,
                onChanged: (_) => setState(() {}), // Update UI when text changes
                decoration: InputDecoration(labelText: 'Mobile Number'),
              ),
              SizedBox(height: 20.0),
              TextField(
                controller: secondNameController,
                onChanged: (_) => setState(() {}), // Update UI when text changes
                decoration: InputDecoration(labelText: 'Second name'),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DisplayScreen(
                        name: nameController.text,
                        mobileNumber: mobileController.text,
                        secondName: secondNameController.text,
                      ),
                    ),
                  );
                },
                child: Text('Next'),
              ),
              SizedBox(height: 20.0),
              // Display entered values below the button
              Text(
                'Name: ${nameController.text}',
                style: TextStyle(fontSize: 18.0),
              ),
              Text(
                'Mobile Number: ${mobileController.text}',
                style: TextStyle(fontSize: 18.0),
              ),
              Text(
                'Second Name: ${secondNameController.text}',
                style: TextStyle(fontSize: 18.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DisplayScreen extends StatelessWidget {
  final String name;
  final String mobileNumber;
  final String secondName;

  DisplayScreen({required this.name, required this.mobileNumber, required this.secondName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Display Screen'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Name: $name',
              style: TextStyle(fontSize: 24.0, color: Colors.red, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0),
            Text(
              'Mobile Number: $mobileNumber',
              style: TextStyle(fontSize: 24.0, color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Text(
              'Second Name: $secondName',
              style: TextStyle(fontSize: 24.0, color: Colors.red, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
