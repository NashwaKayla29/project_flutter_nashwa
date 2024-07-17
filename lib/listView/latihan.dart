import 'package:flutter/material.dart';

class LatihanListView extends StatelessWidget {
  final data = [
    {
      'name': 'Ujang balok',
      'umur': 38, 
      'alamat': 'Bojong Honey',
      'photo': [
        'https://picsum.photos/id/237/200/300'
        'https://picsum.photos/id/237/200/300'
        'https://picsum.photos/id/237/200/300'
        'https://picsum.photos/id/237/200/300'
      ]
      },
    {
      'name': 'Mahmud Alexander', 
      'umur': 28,
      'alamat': 'Sukolilo',
      'photo': [
        'https://picsum.photos/seed/picsum/200/300'
        'https://picsum.photos/seed/picsum/200/300'
        'https://picsum.photos/seed/picsum/200/300'
        'https://picsum.photos/seed/picsum/200/300'
      ]
      },
    {
      'name': 'Aceng perdinand',
      'umur': 18,
      'alamat': 'Meulang Honey',
      'photo': [
        'https://picsum.photos/200/300?grayscale'
        'https://picsum.photos/200/300?grayscale'
        'https://picsum.photos/200/300?grayscale'
        'https://picsum.photos/200/300?grayscale'
      ]
        },
    {
      'name': 'DD nun',
      'umur': 25,
      'alamat': 'Pameungpeuk',
      'photo': [
        'https://picsum.photos/200/300/?blur'
        'https://picsum.photos/200/300/?blur'
        'https://picsum.photos/200/300/?blur'
        'https://picsum.photos/200/300/?blur'
      ]
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.all(8),
          borderOnForeground: true,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Name :${data[index]['name']}"),
                Text("Umur :${data[index]['umur']}'"),
                Text("Alamat :${data[index]['alamat']}"),
                Text("Galeri:"),
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: data[index]['photo'].length,
                    itemBuilder: (content, imgIndex) {
                      return Container (
                        margin: EdgeInsets.only(right: 5),
                        child: Image.network(
                          data[index]['photo'][imgIndex],
                          fit: BoxFit.cover,
                          width: 100,
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        );
       } 
      );
    }
  }
