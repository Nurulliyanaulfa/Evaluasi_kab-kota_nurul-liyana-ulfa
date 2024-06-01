import 'package:flutter/material.dart';
import 'package:kab/models/kabupaten.dart';

class EntryForm extends StatefulWidget {
  final Kabupaten kabupaten;

  const EntryForm(this.kabupaten, {Key? key}) : super(key: key);

  @override
  EntryFormState createState() => EntryFormState(kabupaten);
}

class EntryFormState extends State<EntryForm> {
  Kabupaten kabupaten;

  EntryFormState(this.kabupaten);

  TextEditingController logoController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController pusatPemerintahanController = TextEditingController();
  TextEditingController bupatiWalikotaController = TextEditingController();
  TextEditingController luasWilayahController = TextEditingController();
  TextEditingController jumlahPendudukController = TextEditingController();
  TextEditingController jumlahKecamatanController = TextEditingController();
  TextEditingController jumlahKelurahanController = TextEditingController();
  TextEditingController jumlahDesaController = TextEditingController();
  TextEditingController linkController = TextEditingController();

  @override
  void initState() {
    super.initState();
    logoController.text = kabupaten.logo;
    nameController.text = kabupaten.name;
    pusatPemerintahanController.text = kabupaten.pusatPemerintahan;
    bupatiWalikotaController.text = kabupaten.bupatiWalikota;
    luasWilayahController.text = kabupaten.luasWilayah.toString();
    jumlahPendudukController.text = kabupaten.jumlahPenduduk.toString();
    jumlahKecamatanController.text = kabupaten.jumlahKecamatan.toString();
    jumlahKelurahanController.text = kabupaten.jumlahKelurahan.toString();
    jumlahDesaController.text = kabupaten.jumlahDesa.toString();
    linkController.text = kabupaten.link;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Kabupaten/Kota'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context, kabupaten);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            // Input untuk logo
            TextField(
              controller: logoController,
              decoration: const InputDecoration(
                labelText: 'Logo (URL)',
              ),
              onChanged: (value) {
                kabupaten.logo = value;
              },
            ),
            // Input untuk nama kabupaten/kota
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: 'Nama Kabupaten/Kota',
              ),
              onChanged: (value) {
                kabupaten.name = value;
              },
            ),
            // Input untuk pusat pemerintahan
            TextField(
              controller: pusatPemerintahanController,
              decoration: const InputDecoration(
                labelText: 'Pusat Pemerintahan',
              ),
              onChanged: (value) {
                kabupaten.pusatPemerintahan = value;
              },
            ),
            // Input untuk bupati/walikota
            TextField(
              controller: bupatiWalikotaController,
              decoration: const InputDecoration(
                labelText: 'Bupati/Walikota',
              ),
              onChanged: (value) {
                kabupaten.bupatiWalikota = value;
              },
            ),
            // Input untuk luas wilayah
            TextField(
              controller: luasWilayahController,
              decoration: const InputDecoration(
                labelText: 'Luas Wilayah',
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                kabupaten.luasWilayah = double.parse(value);
              },
            ),
            // Input untuk jumlah penduduk
            TextField(
              controller: jumlahPendudukController,
              decoration: const InputDecoration(
                labelText: 'Jumlah Penduduk',
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                kabupaten.jumlahPenduduk = int.parse(value);
              },
            ),
            // Input untuk jumlah kecamatan
            TextField(
              controller: jumlahKecamatanController,
              decoration: const InputDecoration(
                labelText: 'Jumlah Kecamatan',
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                kabupaten.jumlahKecamatan = int.parse(value);
              },
            ),
            // Input untuk jumlah kelurahan
            TextField(
              controller: jumlahKelurahanController,
              decoration: const InputDecoration(
                labelText: 'Jumlah Kelurahan',
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                kabupaten.jumlahKelurahan = int.parse(value);
              },
            ),
            // Input untuk jumlah desa
            TextField(
              controller: jumlahDesaController,
              decoration: const InputDecoration(
                labelText: 'Jumlah Desa',
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                kabupaten.jumlahDesa = int.parse(value);
              },
            ),
            // Input untuk link kabupaten/kota
            TextField(
              controller: linkController,
              decoration: const InputDecoration(
                labelText: 'Link Kabupaten/Kota',
              ),
              onChanged: (value) {
                kabupaten.link = value;
              },
            ),
            // Tombol Simpan
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, kabupaten);
                },
                child: const Text('Simpan'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
