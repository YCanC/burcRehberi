import 'package:flutter/material.dart';
import 'package:flutter_burc_rehberi/burc_detay.dart';
import 'package:flutter_burc_rehberi/burc_liste.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Burc Rehberi",
      debugShowCheckedModeBanner: false,
      initialRoute: "/formIslemleri",

      routes: {
        "/": (context) => BurcListesi(),
        //"/formIslemleri"(context) =>FormIslemleri(),
        "/burcListesi": (context) => BurcListesi(),
       
      },

      onGenerateRoute: (RouteSettings settings){
        List<String> pathElemanlari =settings.name.split("/"); //  burcDetay/1

        if(pathElemanlari[1]== 'burcDetay'){
          debugPrint("ife girdi");
         
          return MaterialPageRoute(builder: (context)=> BurcDetay(int.parse(pathElemanlari[2])));
          
        }
        
        return null;
      },

      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      //route tanımlandığı için home yazılmaz, hata verir
      // home: BurcListesi(),
    );
  }
}
