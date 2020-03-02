//import 'dart:collection';
import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';

void main() => runApp(MaterialApp(
    home: Home()
));

var kosThing;
changeKos(thing){
  kosThing = thing;
}

class Kosan{
  String pemilik;
  String nama;
  String alamat;
  String deskripsi;
  String image;
  Kosan({this.nama,this.alamat,this.pemilik,this.deskripsi,this.image});
}
class KosanImageConstructor{
  String image1;
  String image2;
  String image3;
  String image4;
  String image5;
  KosanImageConstructor({this.image1,this.image2,this.image3,this.image4,this.image5});
}

List<KosanImageConstructor> KosanImage = [
  KosanImageConstructor(image1:'assets/Model-1.jpg',image2: 'assets/Model-1.jpg',image3: 'assets/Model-1.jpg',image4: 'assets/Model-1.jpg',image5: 'assets/Model-1.jpg'),
  KosanImageConstructor(image1:'assets/Model-2.jpg',image2: 'assets/Model-2.jpg',image3: 'assets/Model-2.jpg',image4: 'assets/Model-2.jpg',image5: 'assets/Model-2.jpg'),
  KosanImageConstructor(image1:'assets/Model-3.jpg',image2: 'assets/Model-3.jpg',image3: 'assets/Model-3.jpg',image4: 'assets/Model-3.jpg',image5: 'assets/Model-3.jpg'),
  KosanImageConstructor(image1:'assets/Model-2.jpg',image2: 'assets/Model-2.jpg',image3: 'assets/Model-2.jpg',image4: 'assets/Model-2.jpg',image5: 'assets/Model-2.jpg'),
  KosanImageConstructor(image1:'assets/Model-1.jpg',image2: 'assets/Model-1.jpg',image3: 'assets/Model-1.jpg',image4: 'assets/Model-1.jpg',image5: 'assets/Model-1.jpg'),
];

List<Kosan> kos = [
  Kosan(pemilik: 'Maryati', nama:'Nur Arif',alamat:'Makamhaji, gang masjid jammal',deskripsi:'Kos Putra tersedia 2 kamar kosong 3x4 meter',image:KosanImage[0].image1),
  Kosan(pemilik: 'Budi', nama:'Widya Graha',alamat:'Pabelan, gang masjid jammal',deskripsi:'Kos Putra tersedia 2 kamar kosong 3x4 meter',image:KosanImage[1].image1),
  Kosan(pemilik: 'Haryanto', nama:'Wanna Amarta',alamat:'RT09/RW03, gang masjid jammal',deskripsi:'Kos Putra tersedia 2 kamar kosong 3x4 meter',image:KosanImage[2].image1),
  Kosan(pemilik: 'Haryati', nama:'Sinden Papat',alamat:'UMS, gang masjid jammal',deskripsi:'Kos Putra tersedia 2 kamar kosong 3x4 meter',image:KosanImage[3].image1),
  Kosan(pemilik: 'Anton', nama:'Nur Setyo',alamat:'Kentingan, gang masjid jammal',deskripsi:'Kos Putra tersedia 2 kamar kosong 3x4 meter',image:KosanImage[4].image1)
];

class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: (Text('INFOKOS',
        style: TextStyle(
          color: Colors.blueAccent,
          fontSize: 22,
          fontWeight: FontWeight.bold
        ),)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: kos.map((kosan) => Card(
              margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
              color: Colors.blue[100],
              child:Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GestureDetector(
                          onTap: (){
                            changeKos([kosan.nama,kosan.alamat,kosan.deskripsi,kosan.image,kosan.pemilik]);
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => KosPage())
                            );
                          },
                          child:Text(
                            kosan.nama,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18
                            ),
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.bookmark),
                          onPressed: (){},
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.face,size: 14,),
                        Text(
                          'Pemilik : ' + kosan.pemilik,
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[600]
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.location_on,size: 14,),
                        Text(
                          kosan.alamat,
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[600],
                              fontStyle: FontStyle.italic
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      height: 10,
                    ),
                    Image(
                      image: AssetImage(kosan.image),
                    ),
                    Text(
                      '\n'+kosan.deskripsi,
                      style: TextStyle(
                          fontSize: 14
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.thumb_up),
                          iconSize: 24,
                          onPressed: (){},
                        ),
                        IconButton(
                          icon: Icon(Icons.thumb_down),
                          iconSize: 24,
                          onPressed: (){},
                        ),
                        Expanded(
                          child: FlatButton(
                            child: Text('More'),
                            onPressed: (){},
                          )
                        )
                      ],
                    )
                  ],
                ),
              )
          )).toList(),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 14,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.search),
            title: Text('Search'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.favorite),
            title: Text('Favourite'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.account_circle),
            title: Text('Account'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.settings),
            title: Text('Settings'),
          )
        ],
        onTap:(index){
          setState(() {
            _currentIndex = index;
          });
        } ,
      ),
    );
  }
}

class KosPage extends StatefulWidget {
  @override
  _KosPageState createState() => _KosPageState();
}

class _KosPageState extends State<KosPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(kosThing[0]),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                CarouselSlider(
//                  height: 400.0,
                  items: [0,1,2,3,4].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                                color: Colors.white
                            ),
                            child: Image(
                              image: AssetImage(KosanImage[i].image1),
                            ),
                        );
                      },
                    );
                  }).toList(),
                ),
                Container(
                  color: Colors.black,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.location_on,color: Colors.white,size: 24,),
                        Icon(Icons.photo,color: Colors.white,size: 24,),
                        Icon(Icons.videocam,color: Colors.white,size: 24,),
                      ],
                    ),
                  )
                ),
                Text(
                  kosThing[1],
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 18
                  ),
                ),
                Card(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Text('Rp 200.000 / Bulan Rp. 3.000.000 / tahun'),
                    ),
                  ),
                ),
                Card(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Text(kosThing[2]),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}