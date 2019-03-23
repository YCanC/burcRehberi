class Burc {
  String _burcAdi;
  String _burcTarihi;
  String _burcDetayi;
  String _burcKucukresim;
  String _burcBuyukresim;

  Burc(this._burcAdi, this._burcBuyukresim, this._burcDetayi,
      this._burcKucukresim, this._burcTarihi);

  String get burcBuyukresim => _burcBuyukresim;
  String get burcKucukResim => _burcKucukresim;
  String get burcDetayi => _burcDetayi;
  String get burcTarihi => _burcTarihi;
  String get burcAdi => _burcAdi;

 


  set burcBuyukresim(String value)
  {
    _burcBuyukresim =value;
  }
  set burcKucukresim(String value)
  {
    _burcKucukresim =value;
  }
  set burcDetayi(String value)
  {
    _burcDetayi =value;
  }
  set burcTarihi(String value)
  {
    _burcTarihi =value;
  }
  set burcAdi(String value)
  {
    _burcAdi =value;
  }

  
}
