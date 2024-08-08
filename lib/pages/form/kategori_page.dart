import 'package:flutter/material.dart';
import 'package:myapp/models/kategori_model.dart';
import 'package:myapp/pages/services/kategori_service.dart';

class KategoriPage extends StatefulWidget {
  @override
  _KategoriPageState createState() => _KategoriPageState();
}

class _KategoriPageState extends State<KategoriPage> {
  final KategoriService _kategoriService = KategoriService();
  Kategori? _kategori;

  @override
  void initState() {
    super.initState();
    _fetchKategori();
  }

  void _fetchKategori() async {
    Kategori? kategori = await _kategoriService.fetchKategori();
    setState(() {
      _kategori = kategori;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kategori'),
      ),
      body: _kategori == null
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: _kategori?.data?.length ?? 0,
              itemBuilder: (context, index) {
                Data kategori = _kategori!.data![index];
                return ListTile(
                  title: Text(kategori.namaKategori ?? 'Tidak Ada'),
                  // subtitle: Text(kategori.slug ?? ''),
                );
              },
            ),
    );
  }
}
