import 'package:flutter/material.dart';
import 'package:fog_of_earth/features/auth/presentation/pages/auth/auth.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static const LatLng _pGooglePlex = LatLng(37.4223, -122.0848);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_back_ios_new_outlined),
            label: 'Back',
          ),
        ],
        // You can add other properties here like `currentIndex`, `onTap`, etc.
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 720, // Set a fixed height for the GoogleMap
              child: GoogleMap(
                initialCameraPosition: CameraPosition(
                  target: _pGooglePlex,
                  zoom: 13,
                ),
              ),
            ),
            Center(
              child: Text('Home Page Content'),
            ),
            _signout(context),
          ],
        ),
      ),
    );
  }
}

Widget _signout(BuildContext context) {
  return ElevatedButton(
    onPressed: () async {
      await Auth().SignOut(
        context: context,
      );
    },
    child: Text(
      'Sign out',
    ),
  );
}
