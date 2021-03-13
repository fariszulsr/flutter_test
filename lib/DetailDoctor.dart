import 'package:flutter/material.dart';
import 'package:maps_launcher/maps_launcher.dart';

void main() {
  runApp(DetailDoctor());
}

class DetailDoctor extends StatefulWidget {
  final int id_doctor;
  DetailDoctor({this.id_doctor});

  @override
  _detaildoctor createState() => _detaildoctor(id_doctor:id_doctor);
}

class _detaildoctor extends State<DetailDoctor> {
  final int id_doctor;
  _detaildoctor({this.id_doctor});

  TextEditingController searchArea =new TextEditingController();
  final List _data = [
    {
      'id':1,
      'id_area':1,
      'id_staf':'101',
      'nama':'Ahmad',
      'area': 'Kebon Jeruk, Jakarta',
      'deskripsi':'Spesialis Jantung',
      'harga':'IDR 250.000',
      'bio':'Lorem Ipsum is simply dummy text.',
      'latlng': '-6.1853,106.7684',
    },
    {
      'id':2,
      'id_area':1,
      'id_staf':'102',
      'nama':'Andra',
      'area': 'Kebon Jeruk, Jakarta',
      'deskripsi':'Spesialis Paru',
      'harga':'IDR 250.000',
      'bio':'Lorem Ipsum is simply dummy text.',
      'latlng': '-6.1853,106.7684',
    },
    {
      'id':3,
      'id_area':1,
      'id_staf':'103',
      'nama':'Andi',
      'area': 'Kebon Jeruk, Jakarta',
      'deskripsi':'Spesialis Hati',
      'harga':'IDR 250.000',
      'bio':'Lorem Ipsum is simply dummy text.',
      'latlng': '-6.1853,106.7684',
    },
    {
      'id':4,
      'id_area':1,
      'id_staf':'104',
      'nama':'Abdul',
      'area': 'Kebon Jeruk, Jakarta',
      'deskripsi':'Spesialis Mata',
      'harga':'IDR 250.000',
      'bio':'Lorem Ipsum is simply dummy text.',
      'latlng': '-6.1853,106.7684',
    },
    {
      'id':5,
      'id_area':2,
      'id_staf':'205',
      'nama':'bagus',
      'area': 'Puri, Jakarta',
      'deskripsi':'Spesialis Jantung',
      'harga':'IDR 250.000',
      'bio':'Lorem Ipsum is simply dummy text.',
      'latlng':'-6.121435, 106.774124',
    },
    {
      'id':6,
      'id_area':2,
      'id_staf':'206',
      'nama':'bagas',
      'area': 'Puri, Jakarta',
      'deskripsi':'Spesialis Paru',
      'harga':'IDR 250.000',
      'bio':'Lorem Ipsum is simply dummy text.',
      'latlng':'-6.121435, 106.774124',
    },
    {
      'id':7,
      'id_area':2,
      'id_staf':'207',
      'nama':'bambang',
      'area': 'Puri, Jakarta',
      'deskripsi':'Spesialis Hati',
      'harga':'IDR 250.000',
      'bio':'Lorem Ipsum is simply dummy text.',
      'latlng':'-6.121435, 106.774124',
    },
    {
      'id':8,
      'id_area':3,
      'id_staf':'308',
      'nama':'caca',
      'area': 'Grogol, Jakarta',
      'deskripsi':'Spesialis Jantung',
      'harga':'IDR 250.000',
      'bio':'Lorem Ipsum is simply dummy text.',
      'latlng':'-6.1618, 106.7919',
    },
    {
      'id':9,
      'id_area':3,
      'id_staf':'309',
      'nama':'christian',
      'area': 'Grogol, Jakarta',
      'deskripsi':'Spesialis Paru',
      'harga':'IDR 250.000',
      'bio':'Lorem Ipsum is simply dummy text.',
      'latlng':'-6.1618, 106.7919',
    },{
      'id':10,
      'id_area':3,
      'id_staf':'310',
      'nama':'chris',
      'area': 'Grogol, Jakarta',
      'deskripsi':'Spesialis Hati',
      'harga':'IDR 250.000',
      'bio':'Lorem Ipsum is simply dummy text.',
      'latlng':'-6.1618, 106.7919',
    },
    {
      'id':11,
      'id_area':4,
      'id_staf':'411',
      'nama':'daniel',
      'area': 'Jatinegara, Jakarta',
      'deskripsi':'Spesialis Jantung',
      'harga':'IDR 250.000',
      'bio':'Lorem Ipsum is simply dummy text.',
      'latlng':'-6.2307, 106.8827',
    },
    {
      'id':12,
      'id_area':4,
      'id_staf':'412',
      'nama':'david',
      'area': 'Jatinegara, Jakarta',
      'deskripsi':'Spesialis Paru',
      'harga':'IDR 250.000',
      'bio':'Lorem Ipsum is simply dummy text.',
      'latlng':'-6.2307, 106.8827',
    },
    {
      'id':13,
      'id_area':5,
      'id_staf':'513',
      'nama':'eko',
      'area': 'Mangga Dua, Jakarta',
      'deskripsi':'Spesialis Jantung',
      'harga':'IDR 250.000',
      'bio':'Lorem Ipsum is simply dummy text.',
      'latlng':'-6.1367, 106.8241',
    },
    {
      'id':14,
      'id_area':6,
      'id_staf':'614',
      'nama':'firdaus',
      'area': 'Slipi, Jakarta',
      'deskripsi':'Spesialis Jantung',
      'harga':'IDR 250.000',
      'bio':'Lorem Ipsum is simply dummy text.',
      'latlng':'-6.1901, 106.8036',
    },
    {
      'id':15,
      'id_area':6,
      'id_staf':'615',
      'nama':'firman',
      'area': 'Slipi, Jakarta',
      'deskripsi':'Spesialis Paru',
      'harga':'IDR 250.000',
      'bio':'Lorem Ipsum is simply dummy text.',
      'latlng':'-6.1901, 106.8036',
    },
    {
      'id':16,
      'id_area':6,
      'id_staf':'616',
      'nama':'frans',
      'area': 'Slipi, Jakarta',
      'deskripsi':'Spesialis Hati',
      'harga':'IDR 250.000',
      'bio':'Lorem Ipsum is simply dummy text.',
      'latlng':'-6.1901, 106.8036',
    },
    {
      'id':17,
      'id_area':6,
      'id_staf':'617',
      'nama':'friska',
      'area': 'Slipi, Jakarta',
      'deskripsi':'Spesialis Mata',
      'harga':'IDR 250.000',
      'bio':'Lorem Ipsum is simply dummy text.',
      'latlng':'-6.1901, 106.8036',
    },
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Doctor'),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: _data.length,
                  itemBuilder: (context, index) {
                    if (_data[index]['id']==id_doctor) {
                      return InkWell(
                        onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (BuildContext context) => ListDoctor(id_area: _data[index]['id'])),
                            // );
                            print(_data[index]['id']);
                        },
                        child: Card(
                          // margin: EdgeInsets.fromLTRB(5, 5, 5, 7),
                          elevation: 5.0,
                          child: InkWell(
                            splashColor: Colors.orange,
                            onTap: () {
                              print(_data[index]["nama"]);
                            },
                            child:
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
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
                                      padding: EdgeInsets.only(left: 20),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            _data[index]["id_staf"],
                                            style: TextStyle(fontFamily: 'Raleway', fontWeight: FontWeight.bold, fontSize: 25.0),
                                            maxLines: 1,
                                          ),
                                          SizedBox(height: 5.0),
                                          Text(
                                            _data[index]["nama"],
                                            style: TextStyle(fontFamily: 'Raleway', fontWeight: FontWeight.bold, fontSize: 20.0),
                                            maxLines: 1,
                                          ),
                                          SizedBox(height: 5.0),
                                          Text(
                                            _data[index]["deskripsi"],
                                            style: TextStyle(fontFamily: 'Raleway', fontWeight: FontWeight.bold, fontSize: 20.0),
                                            maxLines: 1,
                                          ),
                                          SizedBox(height: 5.0),
                                          Text(
                                            _data[index]["area"],
                                            style: TextStyle(fontFamily: 'Raleway', fontWeight: FontWeight.bold, fontSize: 15.0),
                                            maxLines: 1,
                                          ),
                                          SizedBox(height: 0.0),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
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
                                Text(
                                  _data[index]["bio"],
                                  style: TextStyle(fontFamily: 'Raleway', fontWeight: FontWeight.bold, fontSize: 18.0),
                                  maxLines: 1,
                                ),
                                RaisedButton(
                                  onPressed: () => MapsLauncher.launchCoordinates(
                                      -6.121435, 106.774124, 'Jakarta are here'),
                                  child: Text('LAUNCH COORDINATES'),
                                ),
                              ],
                            ),
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
