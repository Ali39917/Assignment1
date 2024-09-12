import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bidding Page',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bidding Page'),
        ),
        body: Center(
          child: MaximumBid(),
        ),
      ),
    );
  }
}

class MaximumBid extends StatefulWidget {
  @override
  _MaximumBidState createState() => _MaximumBidState();
}

class _MaximumBidState extends State<MaximumBid> {
  // Variable to hold the current bid amount
  int _currentBid = 100; // Initial bid

  // Function to increase the bid by $50
  void _increaseBid() {
    setState(() {
      _currentBid += 50;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Display the current maximum bid
          Text(
            'Current Maximum Bid: \$$_currentBid',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          // Button to increase the bid
          ElevatedButton(
            onPressed: _increaseBid,
            child: Text('Increase Bid by \$50'),
          ),
        ],
      ),
    );
  }
}
