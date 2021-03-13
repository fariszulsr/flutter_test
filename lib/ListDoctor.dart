import 'package:flutter/material.dart';
import 'package:flutter_app/DetailDoctor.dart';

void main() {
  runApp(ListDoctor());
}

class ListDoctor extends StatefulWidget {
  final int id_area;
  ListDoctor({this.id_area});

  @override
  _listdoctor createState() => _listdoctor(id_area:id_area);
}

class _listdoctor extends State<ListDoctor> {
  final int id_area;
  _listdoctor({this.id_area});

  TextEditingController searchArea =new TextEditingController();
  final List _data = [
    {
      'id':1,
      'id_area':1,
      'nama':'Ahmad',
      'area': 'Kebon Jeruk, Jakarta',
      'deskripsi':'Spesialis Jantung',
      'harga':'IDR 250.000',
    },
    {
      'id':2,
      'id_area':1,
      'nama':'Andra',
      'area': 'Kebon Jeruk, Jakarta',
      'deskripsi':'Spesialis Paru',
      'harga':'IDR 250.000',
    },
    {
      'id':3,
      'id_area':1,
      'nama':'Andi',
      'area': 'Kebon Jeruk, Jakarta',
      'deskripsi':'Spesialis Hati',
      'harga':'IDR 250.000',
    },
    {
      'id':4,
      'id_area':1,
      'nama':'Abdul',
      'area': 'Kebon Jeruk, Jakarta',
      'deskripsi':'Spesialis Mata',
      'harga':'IDR 250.000',
    },
    {
      'id':5,
      'id_area':2,
      'nama':'bagus',
      'area': 'Puri, Jakarta',
      'deskripsi':'Spesialis Jantung',
      'harga':'IDR 250.000',
    },
    {
      'id':6,
      'id_area':2,
      'nama':'bagas',
      'area': 'Puri, Jakarta',
      'deskripsi':'Spesialis Paru',
      'harga':'IDR 250.000',
    },
    {
      'id':7,
      'id_area':2,
      'nama':'bambang',
      'area': 'Puri, Jakarta',
      'deskripsi':'Spesialis Hati',
      'harga':'IDR 250.000',
    },
    {
      'id':8,
      'id_area':3,
      'nama':'caca',
      'area': 'Grogol, Jakarta',
      'deskripsi':'Spesialis Jantung',
      'harga':'IDR 250.000',
    },
    {
      'id':9,
      'id_area':3,
      'nama':'christian',
      'area': 'Grogol, Jakarta',
      'deskripsi':'Spesialis Paru',
      'harga':'IDR 250.000',
    },{
      'id':10,
      'id_area':3,
      'nama':'chris',
      'area': 'Grogol, Jakarta',
      'deskripsi':'Spesialis Hati',
      'harga':'IDR 250.000',
    },
    {
      'id':11,
      'id_area':4,
      'nama':'daniel',
      'area': 'Jatinegara, Jakarta',
      'deskripsi':'Spesialis Jantung',
      'harga':'IDR 250.000',
    },
    {
      'id':12,
      'id_area':4,
      'nama':'david',
      'area': 'Jatinegara, Jakarta',
      'deskripsi':'Spesialis Paru',
      'harga':'IDR 250.000',
    },
    {
      'id':13,
      'id_area':5,
      'nama':'eko',
      'area': 'Mangga Dua, Jakarta',
      'deskripsi':'Spesialis Jantung',
      'harga':'IDR 250.000',
    },
    {
      'id':14,
      'id_area':6,
      'nama':'firdaus',
      'area': 'Slipi, Jakarta',
      'deskripsi':'Spesialis Jantung',
      'harga':'IDR 250.000',
    },
    {
      'id':15,
      'id_area':6,
      'nama':'firman',
      'area': 'Slipi, Jakarta',
      'deskripsi':'Spesialis Paru',
      'harga':'IDR 250.000',
    },
    {
      'id':16,
      'id_area':6,
      'nama':'frans',
      'area': 'Slipi, Jakarta',
      'deskripsi':'Spesialis Hati',
      'harga':'IDR 250.000',
    },
    {
      'id':17,
      'id_area':6,
      'nama':'friska',
      'area': 'Slipi, Jakarta',
      'deskripsi':'Spesialis Mata',
      'harga':'IDR 250.000',
    },
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('List Doctor'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: _data.length,
                  itemBuilder: (context, index) {
                    if (_data[index]['id_area']==id_area) {
                      return InkWell(
                          onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailDoctor(id_doctor: _data[index]['id'])),
                              );
                            // Navigator.pushReplacementNamed(context, '/DetailDoctor');
                              print(_data[index]['id']);
                          },
                          child: Card(
                            margin: EdgeInsets.fromLTRB(5, 5, 5, 7),
                            elevation: 10.0,
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    child: Image.asset(
                                      'image/doctor.png',
                                      width: 200,
                                      height: 150,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(10.0, 15.0, 0.0, 0.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          _data[index]["nama"],
                                          style: TextStyle(fontFamily: 'Raleway', fontWeight: FontWeight.bold, fontSize: 18.0),
                                          maxLines: 1,
                                        ),
                                        Text(
                                          _data[index]["area"],
                                          style: TextStyle(fontFamily: 'Raleway', fontWeight: FontWeight.bold, fontSize: 18.0),
                                          maxLines: 1,
                                        ),
                                        Text(
                                          _data[index]["deskripsi"],
                                          style: TextStyle(fontFamily: 'Raleway', fontWeight: FontWeight.bold, fontSize: 18.0),
                                          maxLines: 1,
                                        ),
                                        Text(
                                          _data[index]["harga"],
                                          style: TextStyle(fontFamily: 'Raleway', fontWeight: FontWeight.bold, fontSize: 18.0),
                                          maxLines: 1,
                                        ),
                                        SizedBox(height: 0.0),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                          ),
                      );
                    }
                    else {
                      return Container();
                    }
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
