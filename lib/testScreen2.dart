import 'package:flutter/material.dart';
import 'package:itax_easy_app/widgets/buttons/custom_clear_calculate_button.dart';
import 'package:itax_easy_app/widgets/drop_down/select_time_dropdown.dart';
import 'package:itax_easy_app/widgets/inputs/CustomTextField.dart';

class TestScreen2 extends StatefulWidget {
  const TestScreen2({super.key});

  @override
  State<TestScreen2> createState() => _TestScreen2State();
}

class _TestScreen2State extends State<TestScreen2> {
  int _selectedIndex = 0; // Default selected tab index
  final List<String> _titles = [
    "Home2",
    "Tools",
    "Blogs",
    "More",
  ]; // AppBar titles

  // List of widgets for each tab
  final List<Widget> _screens = [
    const Center(child: Text("Home 2 Screen", style: TextStyle(fontSize: 24))),
    ToolPage(),
    const Center(child: Text("Blogs Screen", style: TextStyle(fontSize: 24))),
    const Center(child: Text("More Screen", style: TextStyle(fontSize: 24))),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Update the selected tab index
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(_titles[_selectedIndex]), // Dynamic AppBar title
        centerTitle: true,
      ),
      body: _screens[_selectedIndex], // Display the selected screen
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        currentIndex: _selectedIndex, // Highlight the selected tab
        onTap: _onItemTapped, // Handle tab selection
        type: BottomNavigationBarType.fixed, // Fixed navigation bar
        selectedItemColor: Colors.blue, // Color for selected tab
        unselectedItemColor: Colors.grey, // Color for unselected tabs
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.build), label: 'Tools'),
          BottomNavigationBarItem(icon: Icon(Icons.edit), label: 'Blogs'),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: 'More'),
        ],
      ),
    );
  }
}

// cards

class ToolPage extends StatefulWidget {
  const ToolPage({super.key});

  @override
  State<ToolPage> createState() => _ToolPageState();
}

class _ToolPageState extends State<ToolPage> {
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: 48,
                  height: 4,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Select Calculator',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              ListTile(
                leading: const Icon(Icons.calculate),
                title: const Text('Simple Interest Calculator'),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => SimpleInterestCalculatorScreen(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.percent),
                title: const Text('Compound Interest Calculator'),
                onTap: () {
                  Navigator.pop(context); // Close the bottom sheet
                  print('Compound Interest Calculator Selected');
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              _showBottomSheet(context); // Show bottom sheet on tap
            },
            child: Center(
              child: Container(
                height: 80,
                width: 90,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(Icons.percent, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// simple calulator

class SimpleInterestCalculatorScreen extends StatelessWidget {
  const SimpleInterestCalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Interest Calculator Screen"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text("Principal Amount", style: TextStyle(fontSize: 18)),
              ],
            ),
            CustomTextField(labelText: '1000', hintText: '1000'),
            const SizedBox(height: 16), // Add spacing between sections
            Row(
              children: [
                Text("Rate of Interest (P.A)", style: TextStyle(fontSize: 18)),
              ],
            ),
            CustomTextField(labelText: '15', hintText: '15'),
            const SizedBox(height: 16), // Add spacing between sections
            Row(
              children: [Text("Time Period", style: TextStyle(fontSize: 18))],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 240,
                  child: CustomTextField(labelText: 'Time', hintText: '1'),
                ),
                SelectTimeDropdown(
                  initialValue: 'Year',
                  onChanged: (String value) {},
                ),
              ],
            ),
            const Spacer(),
            CustomClearCalculateButtons(
              onClearPressed: () {
                // Add logic to clear fields
                print("Clear button pressed");
              },
              onCalculatePressed: () {
                // Add logic to calculate simple interest
                print("Calculate button pressed");
              },
            ),
          ],
        ),
      ),
    );
  }
}
