import 'package:flutter/material.dart';
import 'package:project3khairal/lat18mei/detail_destinasi.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Maps'),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // Aksi yang ingin dilakukan ketika tombol pencarian ditekan
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Search Dialog'),
                      content: Text('Tombol pencarian ditekan!'),
                      actions: [
                        TextButton(
                          child: Text('Tutup'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 8),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: 20), // Margin horizontal untuk teks
                child: Text(
                  'Top Destination',
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign
                      .center, // Opsional: Mengatur teks menjadi rata tengah
                ),
              ),
              SizedBox(height: 5),
              Container(
                height:
                    230, // Tinggi untuk card, disesuaikan agar cukup untuk gambar dan teks
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(width: 16), // Padding awal
                    // Card untuk Data Science
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => Course()),
                        // );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width *
                            0.5, // Lebar card
                        margin: EdgeInsets.only(right: 16), // Jarak antar card
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          elevation: 3, // Tingkat shadow
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                child: SizedBox(
                                  height: 150, // Tinggi gambar
                                  width: double.infinity,
                                  child: Image.asset(
                                    'gambar/destinasi1.jpg', // Gambar Data Science
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Destinasi 1', // Judul Data Science
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 18,
                                      ),
                                    ),
                                    SizedBox(
                                        height:
                                            4), // Jarak antara judul dan rating
                                    Row(
                                      children: [
                                        Text(
                                          '4.5', // Penilaian Data Science
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                          ),
                                        ),
                                        SizedBox(
                                            width:
                                                4), // Jarak antara teks dan ikon
                                        Icon(
                                          Icons.star, // Ikon bintang
                                          color: Colors.black45,
                                        ),
                                        SizedBox(
                                            width:
                                                8), // Jarak antara rating dan learners
                                        Text(
                                          '2004 Visitor', // Jumlah learners Data Science
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // Card untuk Machine Learning
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => Course()),
                        // );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width *
                            0.5, // Lebar card
                        margin: EdgeInsets.only(right: 16), // Jarak antar card
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          elevation: 3, // Tingkat shadow
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                child: SizedBox(
                                  height: 150, // Tinggi gambar
                                  width: double.infinity,
                                  child: Image.asset(
                                    'gambar/destinasi1.jpg', // Gambar Machine Learning
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Destinasi 2', // Judul Machine Learning
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 18,
                                      ),
                                    ),
                                    SizedBox(
                                        height:
                                            4), // Jarak antara judul dan rating
                                    Row(
                                      children: [
                                        Text(
                                          '4.6', // Penilaian Machine Learning
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                          ),
                                        ),
                                        SizedBox(
                                            width:
                                                4), // Jarak antara teks dan ikon
                                        Icon(
                                          Icons.star, // Ikon bintang
                                          color: Colors.black45,
                                        ),
                                        SizedBox(
                                            width:
                                                8), // Jarak antara rating dan learners
                                        Text(
                                          '818 Visitor', // Jumlah learners Machine Learning
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // Card untuk Mobile Learning
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => Course()),
                        // );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width *
                            0.5, // Lebar card
                        margin: EdgeInsets.only(right: 16), // Jarak antar card
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          elevation: 3, // Tingkat shadow
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                child: SizedBox(
                                  height: 150, // Tinggi gambar
                                  width: double.infinity,
                                  child: Image.asset(
                                    'gambar/destinasi1.jpg', // Gambar Mobile Learning
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Destinasi 3', // Judul Mobile Learning
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 18,
                                      ),
                                    ),
                                    SizedBox(
                                        height:
                                            4), // Jarak antara judul dan rating
                                    Row(
                                      children: [
                                        Text(
                                          '4.9', // Penilaian Mobile Learning
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                          ),
                                        ),
                                        SizedBox(
                                            width:
                                                4), // Jarak antara teks dan ikon
                                        Icon(
                                          Icons.star, // Ikon bintang
                                          color: Colors.black45,
                                        ),
                                        SizedBox(
                                            width:
                                                8), // Jarak antara rating dan learners
                                        Text(
                                          '2003 Visitor', // Jumlah learners Mobile Learning
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 16), // Padding akhir
                  ],
                ),
              ),
              SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 8),
                  Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: 20), // Margin horizontal untuk teks
                    child: Text(
                      'Destination',
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign
                          .center, // Opsional: Mengatur teks menjadi rata tengah
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.place),
                    title: Text('Politeknik Negeri Padang'),
                    subtitle: Text('Padang, Sumbar'),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailDestinasi()),
                      );
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.place),
                    title: Text('Place 2'),
                    subtitle: Text('Description for place 2'),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: () {
                      // Navigator.push(...);
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.place),
                    title: Text('Place 3'),
                    subtitle: Text('Description for place 3'),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: () {
                      // Navigator.push(...);
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.place),
                    title: Text('Place 4'),
                    subtitle: Text('Description for place 3'),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: () {
                      // Navigator.push(...);
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.place),
                    title: Text('Place 5'),
                    subtitle: Text('Description for place 3'),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: () {
                      // Navigator.push(...);
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.place),
                    title: Text('Place 6'),
                    subtitle: Text('Description for place 3'),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: () {
                      // Navigator.push(...);
                    },
                  ),
                ],
              ),
              SizedBox(width: 16),
            ],
          ),
        ));
  }
}
