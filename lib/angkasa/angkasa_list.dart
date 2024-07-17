import 'package:flutter/material.dart';
import 'detail_angkasa.dart';

class ListAngkasa extends StatelessWidget {
  final List<Map<String, dynamic>> planetData = [
    {
      "nama": "Merkurius",
      "image": "assets/images/merkurius.jpg",
      "gallery": [
        "assets/images/merkurius1.jpg",
        "assets/images/merkurius2.jpg",
        "assets/images/merkurius3.jpg"
      ],
      "desc": "Merkurius atau Utarid merupakan planet terkecil di Tata Surya sekaligus yang terdekat dari Matahari. Periode revolusi planet ini merupakan yang terpendek dari semua planet di Tata Surya, yakni 87,79 hari."
    },
    {
      "nama": "Venus",
      "image": "assets/images/venus.jpg",
      "gallery": [
        "assets/images/venus1.jpg",
        "assets/images/venus2.jpg",
        "assets/images/venus3.jpg",
      ],
      "desc": "Venus adalah planet kedua dari Matahari, dan planet terbesar keenam. Ini adalah planet terpanas di tata surya kita."
    },
    {
      "nama": "Bumi",
      "image": "assets/images/bumi.jpg",
      "gallery": [
        "assets/images/bumi1.jpg",
        "assets/images/bumi2.jpg",
        "assets/images/bumi3.jpg",
      ],
      "desc": "Planet asal kita, Bumi, adalah planet terestrial yang berbatu-batu. Ia memiliki permukaan padat dan aktif dengan pegunungan, lembah, ngarai, dataran, dan banyak lagi. Bumi istimewa karena merupakan planet samudra. Air menutupi 70% permukaan bumi."
    },
    {
      "nama": "Mars",
      "image": "assets/images/mars.png",
      "gallery": [
        "assets/images/mars1.jpg",
        "assets/images/mars2.jpg",
        "assets/images/mars3.jpg",
      ],
      "desc": "Mars atau Marikh adalah planet terdekat keempat dari Matahari. Namanya diambil dari dewa perang Romawi, Mars. Planet ini sering dijuluki sebagai 'planet merah' karena tampak dari jauh berwarna kemerah-kemerahan. Ini disebabkan oleh keberadaan besi(III) oksida di permukaan planet Mars."
    },
    {
      "nama": "Jupiter",
      "image": "assets/images/Jupiter.jpg",
      "gallery": [
        "assets/images/jupiter1.jpg",
        "assets/images/jupiter2.jpg",
        "assets/images/jupiter3.jpg",
      ],
      "desc": "Jupiter, Musytari, Kumbendi, Gumerah atau Tunggalbahangi adalah planet kelima terdekat dari Matahari setelah Merkurius, Venus, Bumi, dan Mars. Planet ini juga merupakan planet terbesar di Tata Surya."
    },
    {
      "nama": "Saturnus",
      "image": "assets/images/saturnus.webp",
      "gallery": [
        "assets/images/saturnus1.webp",
        "assets/images/saturnus2.jpeg",
        "assets/images/saturnus3.webp",
      ],
      "desc": "Saturnus, Zohal, Tumpak, Belahnaik atau Anakdatuk adalah planet keenam dari Matahari dan merupakan planet terbesar kedua di Tata Surya setelah Jupiter. Saturnus juga merupakan sebuah raksasa gas yang memiliki perak rata-rata sekitar 9 kali radius rata-rata Bumi."
    },
    {
      "nama": "Uranus",
      "image": "assets/images/uranus.jpeg",
      "gallery": [
        "assets/images/uranus1.jpg",
        "assets/images/uranus2.webp",
        "assets/images/uranus3.jpg",
      ],
      "desc": "Uranus adalah planet ketujuh dari Matahari. Uranus merupakan planet yang memiliki jari-jari terbesar ketiga sekaligus massa terbesar keempat di Tata Surya. Uranus juga merupakan satu-satunya planet yang namanya berasal dari tokoh dalam mitologi Yunani, dari versi Latinisasi nama dewa langit Yunani Ouranos."
    },
    {
      "nama": "Neptunus",
      "image": "assets/images/neptunus.webp",
      "gallery": [
        "assets/images/neptunus1.webp",
        "assets/images/neptunus2.jpg",
        "assets/images/neptunus3.jpg",
      ],
      "desc": "Neptunus merupakan planet terjauh dari Matahari. Neptunus merupakan planet terbesar keempat berdasarkan diameter dan terbesar ketiga berdasarkan massa. Massa Neptunus tercatat 17 kali lebih besar daripada Bumi, dan sedikit lebih kecil daripada Uranus."
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Planet'),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView.builder(
            itemCount: planetData.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailAgkasa(
                        nama: planetData[index]["nama"],
                        image: planetData[index]["image"],
                        gallery: planetData[index]["gallery"],
                        desc: planetData[index]["desc"],
                      ),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.bottomLeft,
                  height: 200,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image:DecorationImage(
                      image: AssetImage(planetData[index]["image"]),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Text(
                    planetData[index]["nama"],
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}