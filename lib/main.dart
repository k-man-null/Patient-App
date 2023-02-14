import 'package:flutter/material.dart';
import 'package:patient/customWidgets/tabitem.dart';
import 'package:patient/pages/home.dart';
import 'package:patient/pages/messages.dart';
import 'package:patient/pages/schedules.dart';
import 'package:patient/pages/settings.dart';

import 'pages/appointment.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Patient App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = [
    Home(),
    Schedule(),
    Appointment(),
    Messages(),
    Settings()
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(children: [
        _widgetOptions.elementAt(_selectedIndex),
        Positioned(
            bottom: 0,
            left: 0,
            child: Container(
                width: size.width,
                height: 70,
                child: Scaffold(
                  floatingActionButton: FloatingActionButton(
                    onPressed: () => {
                      
                    },
                    backgroundColor: Color(0xFF0c54fc),
                    child: const Icon(Icons.add, size: 50),
                  ),
                  floatingActionButtonLocation:
                      FloatingActionButtonLocation.centerDocked,
                  bottomNavigationBar: _buildBottonNavBar(),
                )))
      ]),
    );
  }

 

  Widget? _buildBottonNavBar() {
    return BottomAppBar(
      
      shape: const CircularNotchedRectangle(),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        TabItem(icon: Icons.home_outlined, isSelected: _selectedIndex == 0, onIconTap: () { setState(() {
          _selectedIndex = 0;
        }); },),
        TabItem(icon: Icons.calendar_today, isSelected: _selectedIndex == 1,onIconTap: () { setState(() {
          _selectedIndex = 1;
        }); }),
        const Padding(
          padding: EdgeInsets.fromLTRB(0,14,0,0),
          child: Text(
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Color(0xFF0c54fc)),
            "APPOINTMENT"),
        ),
        TabItem(icon: Icons.message_outlined, isSelected: _selectedIndex == 3,onIconTap: () { setState(() {
          _selectedIndex = 3;
        }); }),
        TabItem(icon: Icons.person_2_outlined, isSelected: _selectedIndex == 4,onIconTap: () { setState(() {
          _selectedIndex = 4;
        }); })
        ]),
    );
  }
}
