import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:project3khairal/lat18mei/home.dart';

void main() {
  runApp(DetailDestinasi());
}

class DetailDestinasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Politeknik Negeri Padang'),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );
            },
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // Handle search button press
              },
            ),
          ],
        ),
        body: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('gambar/pnp.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              TabBar(
                tabs: [
                  Tab(text: 'Overview'),
                  Tab(text: 'Others'),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    OverviewTab(),
                    LecturesTab(),
                    SimilarCoursesTab(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class OverviewTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: Icon(Icons.access_time), // Icon for time
            title: Text('07.00 - 18.00'),
          ),
          ListTile(
            leading: Icon(Icons.place), // Icon for certificate
            title: Text(
                'Jl. Kampus, Limau Manis, Kec. Pauh, Kota Padang, Sumatera Barat 25164'),
          ),
          ListTile(
            leading: Icon(Icons.contact_phone), // Icon for level
            title: Text('(0751) 72590'),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'About?',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Politeknik Negeri Padang adalah sebuah perguruan tinggi negeri yang terdapat di Kota Padang, Sumatera Barat, Indonesia. Politeknik ini memiliki kampus yang bersebelahan dengan Universitas Andalas.',
                  style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                ),
                SizedBox(height: 10),
                Container(
                  height: 300, // Tentukan tinggi untuk GoogleMap
                  child: GoogleMap(
                    myLocationEnabled: true,
                    initialCameraPosition: const CameraPosition(
                        target: LatLng(-0.9143104398097486, 100.466129537154),
                        zoom: 16),
                    mapType: MapType.normal,
                    markers: {
                      const Marker(
                          markerId: MarkerId("Politeknik Negeri Padang"),
                          position:
                              LatLng(-0.9143104398097486, 100.466129537154),
                          infoWindow: InfoWindow(
                              title: 'Politeknik Negeri Padang',
                              snippet: 'Jl. Kampus, Limau Manis, Kec. Pauh, Kota Padang, Sumatera Barat 25164'))
                    },
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Rating and Reviews',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Row(
              children: [
                Text(
                  '4.5',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 8),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.grey, size: 20),
                    Icon(Icons.star, color: Colors.grey, size: 20),
                    Icon(Icons.star, color: Colors.grey, size: 20),
                    Icon(Icons.star, color: Colors.grey, size: 20),
                    Icon(Icons.star_half, color: Colors.grey, size: 20),
                  ],
                ),
                SizedBox(width: 8),
                Text(
                  '15 reviews',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey, // Background color
                foregroundColor: Colors.white, // Text color
              ),
              onPressed: () {
                // Handle button press
              },
              child: Text('Leave a Review'),
            ),
          ),
        ],
      ),
    ));
  }
}

class LecturesTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Lectures content goes here'),
    );
  }
}

class SimilarCoursesTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Similar courses content goes here'),
    );
  }
}
