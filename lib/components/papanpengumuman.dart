import 'package:flutter/material.dart';

class PapanPengumuman extends StatelessWidget {
  const PapanPengumuman({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 200,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(8),
        ),
        child: OverflowBox(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Papan Pengumuman",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                  width: double.infinity,
                  height: 1,
                  color: Colors.white.withOpacity(.5)),
              ClipRRect(
                child: Container(
                  height: 200 - 38.0,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      child: Text(
                        "Telah hilang sebuah dompet berwarna hitam beserta kartu pelajar dan suratsurat penting atas nama Claudia Putri. Dompet hilang di sekitar halaman sekolah. Barang siapa menemukan dompet tersebut, dimohon mengembalikan kepada pemiliknya, yaitu Claudia Putri kelas VII A atau dapat menyerahkan kepada petugas tata usaha.",
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
