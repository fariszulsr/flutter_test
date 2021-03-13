import 'package:flutter/material.dart';
import 'package:flutter_app/ListDoctor.dart';
import 'package:flutter_app/DetailDoctor.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  get id => null;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mobile App Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Data Area'),
      // routes: <String,WidgetBuilder>{
      //   '/DetailDoctor': (BuildContext context)=> new DetailDoctor(id_doctor: id),
      // }
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController editingController = TextEditingController();

  List _data = [
    {
      'id':1,
      'deskripsi': 'Kebon Jeruk, Jakarta',
    },
    {
      'id':2,
      'deskripsi': 'Puri, Jakarta',
    },
    {
      'id':3,
      'deskripsi': 'Grogol, Jakarta',
    },
    {
      'id':4,
      'deskripsi': 'Jatinegara, Jakarta',
    },
    {
      'id':5,
      'deskripsi': 'Mangga Dua, Jakarta',
    },
    {
      'id':6,
      'deskripsi': 'Slipi, Jakarta',
    },
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text(widget.title),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (value) {
                  setState(() {});
                },
                controller: editingController,
                decoration: InputDecoration(
                    labelText: "Search",
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)))),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: _data.length,
                  itemBuilder: (context, index) {
                    if (editingController.text.isEmpty) {
                      return InkWell(
                          onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) => ListDoctor(id_area: _data[index]['id'])),
                              );
                              print(_data[index]['id']);
                          },
                        child: ListTile(
                          title: Text('${_data[index]["deskripsi"]}'),
                        )
                      );
                    } else if (_data[index]["deskripsi"]
                        .toLowerCase()
                        .contains(editingController.text) ||
                        _data[index]["deskripsi"]
                            .toLowerCase()
                            .contains(editingController.text)) {
                      return
                        InkWell(
                          onTap: () {
                            if(_data[index]['id']!=null){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) => ListDoctor(id_area: _data[index]['id'])),
                              );
                              print(_data[index]['deskripsi']);
                            }
                          },
                          child: ListTile(
                            title:
                            Text('${_data[index]["deskripsi"]}'),
                          ),
                        );
                    } else {
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