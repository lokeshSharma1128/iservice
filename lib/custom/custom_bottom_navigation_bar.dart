import 'package:flutter/material.dart';

import '../home_screen/home_screen.dart';


class ElevatedBottomNavigationBar extends StatefulWidget {
  const ElevatedBottomNavigationBar({super.key});

  @override
  _ElevatedBottomNavigationBarState createState() =>
      _ElevatedBottomNavigationBarState();
}

class _ElevatedBottomNavigationBarState
    extends State<ElevatedBottomNavigationBar> {
  int _selectedIndex = 0;

  final List<Map<String, dynamic>> _items = [
    {'icon': Icons.home, 'label': 'Home'},
    {'icon': Icons.send, 'label': 'Location'},
    {'icon': Icons.star, 'label': 'Favorite'},
    {'icon': Icons.message, 'label': 'Message'},
    {'icon': Icons.person, 'label': 'Profile'},

];

  // final List<Map<String, dynamic>> _items = [
  //   {
  //     'icon': Icons.home,
  //     'label': 'Home',
  //     'screen': const HomeScreen(), // This is a widget
  //   },
  //   {
  //     'icon': Icons.send,
  //     'label': 'Location',
  //     'screen': const SearchScreen(), // This is a widget
  //   },
  //   {
  //     'icon': Icons.star,
  //     'label': 'Favorite',
  //     'screen': const ProfileScreen(), // This is a widget
  //   },
  //   {
  //     'icon': Icons.message,
  //     'label': 'Message',
  //     'screen': const ProfileScreen(), // This is a widget
  //   },
  //   {
  //     'icon': Icons.person,
  //     'label': 'Profile',
  //     'screen': const ProfileScreen(), // This is a widget
  //   },
  // ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                color: Colors.orange,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(_items.length, (index) {
              bool isSelected = _selectedIndex == index;
              return SizedBox(
                height: 80,
                child: GestureDetector(
                  onTap: () => _onItemTapped(index),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                        transform: Matrix4.translationValues(
                          0,
                          isSelected ? -30 : 0,
                          0,
                        ),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: isSelected
                              ? Colors.white
                              : Colors.transparent,
                          child: Icon(
                            _items[index]['icon'],
                            size: 30,
                            color: isSelected
                                ? Colors.black
                                : Colors.white,
                          ),
                        ),
                      ),
                      if (isSelected) ...[
                        Positioned(
                          bottom: 5,
                          left: 0,
                          right: 0,
                          child: Center(
                            child: Text(
                              _items[index]['label'],
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: -2,
                          left: 0,
                          right: 0,
                          child: Center(
                            child: Container(
                              width: 25,
                              height: 2,
                              decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}