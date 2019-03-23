import 'package:flutter/material.dart';
import 'package:flutter_burc_rehberi/burc_liste.dart';
import 'package:flutter_burc_rehberi/models/burc.dart';
import 'package:palette_generator/palette_generator.dart';

class BurcDetay extends StatelessWidget {
  int gelenIndex;
  Burc secilenBurc;

  BurcDetay(int sayi) {
    gelenIndex = sayi;
  }

  @override
  Widget build(BuildContext context) {
    secilenBurc = BurcListesi.tumBurclar[gelenIndex];

    return Scaffold(
      body: CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            primary: true,
            backgroundColor: Colors.pink,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("images/"+secilenBurc.burcBuyukresim, fit: BoxFit.cover),
              centerTitle: true,
            title: Text(secilenBurc.burcAdi + "Burcu ve özellikleri",),

            ),
            
          ),

          SliverToBoxAdapter(
              child: SingleChildScrollView(
                child: Text(secilenBurc.burcDetayi,style: TextStyle(fontSize: 20, color: Colors.black, fontStyle:FontStyle.italic)),
              ),
          ),
        ],
      ),
    );
  }
}
