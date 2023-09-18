import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tugas_2/ui/tampil_data.dart';

class FormData extends StatefulWidget {
  const FormData({Key? key}) : super(key: key);

  @override
  _FormDataState createState() => _FormDataState();
}

class _FormDataState extends State<FormData> {
//MULAI SINI (membuat atribut untuk menampung hasil textfield)
  final _namaTextboxController = TextEditingController();
  final _nimTextboxController = TextEditingController();
  final _tahunLahirTextboxController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //
          title: Text("Input Data"),
        ),
        body: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(labelText: "Nama"),
                controller:
                _namaTextboxController, //atribut dimasukan kesini untuk record apa yang diinputkan
              ),
              TextField(
                decoration: InputDecoration(labelText: "NIM"),
                controller: _nimTextboxController,
              ),
              TextField(
                decoration: InputDecoration(labelText: "Tahun Lahir"),
                controller: _tahunLahirTextboxController,
              ),

              //menambahkan margin
              Container(
                  margin: const EdgeInsets.only(top: 8.0),
                  child: ElevatedButton(
                    child: Text('Simpan'),
                    onPressed: () {
                      String nama = _namaTextboxController
                          .text; //nama=variabel untuk menampung nama
                      String nim = _nimTextboxController.text;
                      int tahunLahir = int.parse(
                          _tahunLahirTextboxController.text); //parsing data

                      //ketika di klik onpressed akan pindah ke halaman tampil
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => TampilData(
                            nama: nama, //kiri=nama yang telah diinputkan
                            nim: nim,
                            tahunLahir: tahunLahir,
                          )));
                    },
                  ))
            ],
          ),
        ));
  }
}

//perhitungan umur
int hitungUmur(int tahunLahir) {
  DateTime sekarang = DateTime.now(); //kita ambil tahun saat ini
  int tahunSekarang = sekarang.year;
  int selisihTahun = tahunSekarang - tahunLahir; //hitung selisih tahun
  return selisihTahun; //mengembalikan nilai umur sekarang
}