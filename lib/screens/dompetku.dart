import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class DompetKu extends StatelessWidget {
  const DompetKu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("Jumat, 12 Agust 2022"),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_forward),
                )
              ],
            ),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.all(8),
              width: MediaQuery.of(context).size.width - 50,
              height: MediaQuery.of(context).size.height / 11,
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    child: Column(
                      children: <Widget>[
                        Text("Pemasukan"),
                        Text("0"),
                      ],
                    ),
                  ),
                  //pengeluaran
                  Container(
                    child: Column(
                      children: <Widget>[
                        Text("Pengeluaran"),
                        Text("0"),
                      ],
                    ),
                  ),
                  //selisih
                  Container(
                    child: Column(
                      children: <Widget>[
                        Text("Selisih"),
                        Text("0"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("Test"),
                );
              },
            ),
          )
        ],
      ),
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.react,
        items: [
          TabItem(icon: Icons.list, title: 'Data Harian'),
          TabItem(icon: Icons.list, title: 'Hutang'),
          TabItem(icon: Icons.add_circle),
          TabItem(icon: Icons.list, title: 'Rekap'),
          TabItem(icon: Icons.list, title: 'Setting'),
        ],
        initialActiveIndex: 1,
        onTap: (int i) => print('click index=$i'),
      ),
    );
  }
}
