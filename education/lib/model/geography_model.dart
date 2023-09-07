class GeographyTopics {
  List<Geography>? _geography;

  GeographyTopics({List<Geography>? geography}) {
    if (geography != null) {
      this._geography = geography;
    }
  }

  List<Geography>? get geography => _geography;
  set geography(List<Geography>? geography) => _geography = geography;

  GeographyTopics.fromJson(Map<String, dynamic> json) {
    if (json['geography'] != null) {
      _geography = <Geography>[];
      json['geography'].forEach((v) {
        _geography!.add(new Geography.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._geography != null) {
      data['geography'] = this._geography!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Geography {
  String? _title;
  String? _description;
  String? _image;
  List<EuropeCountriesCapital>? _europeCountriesCapital;
  List<Usa>? _usa;

  Geography(
      {String? title,
      String? description,
      String? image,
      List<EuropeCountriesCapital>? europeCountriesCapital,
      List<Usa>? usa}) {
    if (title != null) {
      this._title = title;
    }
    if (description != null) {
      this._description = description;
    }
    if (image != null) {
      this._image = image;
    }
    if (europeCountriesCapital != null) {
      this._europeCountriesCapital = europeCountriesCapital;
    }
    if (usa != null) {
      this._usa = usa;
    }
  }

  String? get title => _title;
  set title(String? title) => _title = title;
  String? get description => _description;
  set description(String? description) => _description = description;
  String? get image => _image;
  set image(String? image) => _image = image;
  List<EuropeCountriesCapital>? get europeCountriesCapital =>
      _europeCountriesCapital;
  set europeCountriesCapital(
          List<EuropeCountriesCapital>? europeCountriesCapital) =>
      _europeCountriesCapital = europeCountriesCapital;
  List<Usa>? get usa => _usa;
  set usa(List<Usa>? usa) => _usa = usa;

  Geography.fromJson(Map<String, dynamic> json) {
    _title = json['title'];
    _description = json['description'];
    _image = json['image'];
    if (json['europe_countries_capital'] != null) {
      _europeCountriesCapital = <EuropeCountriesCapital>[];
      json['europe_countries_capital'].forEach((v) {
        _europeCountriesCapital!.add(new EuropeCountriesCapital.fromJson(v));
      });
    }
    if (json['usa'] != null) {
      _usa = <Usa>[];
      json['usa'].forEach((v) {
        _usa!.add(new Usa.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this._title;
    data['description'] = this._description;
    data['image'] = this._image;
    if (this._europeCountriesCapital != null) {
      data['europe_countries_capital'] =
          this._europeCountriesCapital!.map((v) => v.toJson()).toList();
    }
    if (this._usa != null) {
      data['usa'] = this._usa!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class EuropeCountriesCapital {
  String? _title;
  String? _description;
  String? _name1;
  String? _northAndBalcanCountry1;
  String? _northAndBalcanCountry2;
  String? _northAndBalcanCountry3;
  String? _northAndBalcanCountry4;
  String? _northAndBalcanCountry5;
  String? _northAndBalcanCountry6;
  String? _northAndBalcanCountry7;
  String? _northAndBalcanCountry8;
  String? _northAndBalcanCountry9;
  String? _northAndBalcanCountry10;
  String? _northAndBalcanCountry11;
  String? _northAndBalcanCountry12;
  String? _northAndBalcanCountry13;
  String? _name2;
  String? _chygushEuropeTitle1;
  String? _chygushEuropeTitle2;
  String? _eastCountry1;
  String? _eastCountry2;
  String? _eastCountry3;
  String? _eastCountry4;
  String? _eastCountry5;
  String? _eastCountry6;
  String? _eastCountry7;
  String? _eastCountry8;
  String? _eastCountry9;
  String? _eastCountry10;
  String? _eastCountry11;
  String? _eastCountry12;
  String? _eastCountry13;
  String? _eastCountry14;
  String? _eastCountry15;
  String? _eastCountry16;
  String? _eastCountry17;
  String? _eastCountry18;
  String? _eastCountry19;
  String? _eastCountry20;
  String? _eastCountry21;
  String? _eastCountry22;
  String? _eastCountry23;
  String? _eastCountry24;
  String? _eastCountry25;
  String? _eastCountry26;
  String? _eastCountry27;
  String? _eastCountry28;
  String? _eastCountry29;
  String? _eastCountry30;
  String? _eastCountry31;
  String? _eastCountry32;
  String? _eastCountry33;
  String? _eastCountry34;
  String? _suroolor;
  String? _suroo1;
  String? _joop1;
  String? _suroo2;
  String? _joop2;
  String? _suroo3;
  String? _joop3;
  String? _suroo4;
  String? _joop4;
  String? _suroo5;
  String? _joop5;

  EuropeCountriesCapital(
      {String? title,
      String? description,
      String? name1,
      String? northAndBalcanCountry1,
      String? northAndBalcanCountry2,
      String? northAndBalcanCountry3,
      String? northAndBalcanCountry4,
      String? northAndBalcanCountry5,
      String? northAndBalcanCountry6,
      String? northAndBalcanCountry7,
      String? northAndBalcanCountry8,
      String? northAndBalcanCountry9,
      String? northAndBalcanCountry10,
      String? northAndBalcanCountry11,
      String? northAndBalcanCountry12,
      String? northAndBalcanCountry13,
      String? name2,
      String? chygushEuropeTitle1,
      String? chygushEuropeTitle2,
      String? eastCountry1,
      String? eastCountry2,
      String? eastCountry3,
      String? eastCountry4,
      String? eastCountry5,
      String? eastCountry6,
      String? eastCountry7,
      String? eastCountry8,
      String? eastCountry9,
      String? eastCountry10,
      String? eastCountry11,
      String? eastCountry12,
      String? eastCountry13,
      String? eastCountry14,
      String? eastCountry15,
      String? eastCountry16,
      String? eastCountry17,
      String? eastCountry18,
      String? eastCountry19,
      String? eastCountry20,
      String? eastCountry21,
      String? eastCountry22,
      String? eastCountry23,
      String? eastCountry24,
      String? eastCountry25,
      String? eastCountry26,
      String? eastCountry27,
      String? eastCountry28,
      String? eastCountry29,
      String? eastCountry30,
      String? eastCountry31,
      String? eastCountry32,
      String? eastCountry33,
      String? eastCountry34,
      String? suroolor,
      String? suroo1,
      String? joop1,
      String? suroo2,
      String? joop2,
      String? suroo3,
      String? joop3,
      String? suroo4,
      String? joop4,
      String? suroo5,
      String? joop5}) {
    if (title != null) {
      this._title = title;
    }
    if (description != null) {
      this._description = description;
    }
    if (name1 != null) {
      this._name1 = name1;
    }
    if (northAndBalcanCountry1 != null) {
      this._northAndBalcanCountry1 = northAndBalcanCountry1;
    }
    if (northAndBalcanCountry2 != null) {
      this._northAndBalcanCountry2 = northAndBalcanCountry2;
    }
    if (northAndBalcanCountry3 != null) {
      this._northAndBalcanCountry3 = northAndBalcanCountry3;
    }
    if (northAndBalcanCountry4 != null) {
      this._northAndBalcanCountry4 = northAndBalcanCountry4;
    }
    if (northAndBalcanCountry5 != null) {
      this._northAndBalcanCountry5 = northAndBalcanCountry5;
    }
    if (northAndBalcanCountry6 != null) {
      this._northAndBalcanCountry6 = northAndBalcanCountry6;
    }
    if (northAndBalcanCountry7 != null) {
      this._northAndBalcanCountry7 = northAndBalcanCountry7;
    }
    if (northAndBalcanCountry8 != null) {
      this._northAndBalcanCountry8 = northAndBalcanCountry8;
    }
    if (northAndBalcanCountry9 != null) {
      this._northAndBalcanCountry9 = northAndBalcanCountry9;
    }
    if (northAndBalcanCountry10 != null) {
      this._northAndBalcanCountry10 = northAndBalcanCountry10;
    }
    if (northAndBalcanCountry11 != null) {
      this._northAndBalcanCountry11 = northAndBalcanCountry11;
    }
    if (northAndBalcanCountry12 != null) {
      this._northAndBalcanCountry12 = northAndBalcanCountry12;
    }
    if (northAndBalcanCountry13 != null) {
      this._northAndBalcanCountry13 = northAndBalcanCountry13;
    }
    if (name2 != null) {
      this._name2 = name2;
    }
    if (chygushEuropeTitle1 != null) {
      this._chygushEuropeTitle1 = chygushEuropeTitle1;
    }
    if (chygushEuropeTitle2 != null) {
      this._chygushEuropeTitle2 = chygushEuropeTitle2;
    }
    if (eastCountry1 != null) {
      this._eastCountry1 = eastCountry1;
    }
    if (eastCountry2 != null) {
      this._eastCountry2 = eastCountry2;
    }
    if (eastCountry3 != null) {
      this._eastCountry3 = eastCountry3;
    }
    if (eastCountry4 != null) {
      this._eastCountry4 = eastCountry4;
    }
    if (eastCountry5 != null) {
      this._eastCountry5 = eastCountry5;
    }
    if (eastCountry6 != null) {
      this._eastCountry6 = eastCountry6;
    }
    if (eastCountry7 != null) {
      this._eastCountry7 = eastCountry7;
    }
    if (eastCountry8 != null) {
      this._eastCountry8 = eastCountry8;
    }
    if (eastCountry9 != null) {
      this._eastCountry9 = eastCountry9;
    }
    if (eastCountry10 != null) {
      this._eastCountry10 = eastCountry10;
    }
    if (eastCountry11 != null) {
      this._eastCountry11 = eastCountry11;
    }
    if (eastCountry12 != null) {
      this._eastCountry12 = eastCountry12;
    }
    if (eastCountry13 != null) {
      this._eastCountry13 = eastCountry13;
    }
    if (eastCountry14 != null) {
      this._eastCountry14 = eastCountry14;
    }
    if (eastCountry15 != null) {
      this._eastCountry15 = eastCountry15;
    }
    if (eastCountry16 != null) {
      this._eastCountry16 = eastCountry16;
    }
    if (eastCountry17 != null) {
      this._eastCountry17 = eastCountry17;
    }
    if (eastCountry18 != null) {
      this._eastCountry18 = eastCountry18;
    }
    if (eastCountry19 != null) {
      this._eastCountry19 = eastCountry19;
    }
    if (eastCountry20 != null) {
      this._eastCountry20 = eastCountry20;
    }
    if (eastCountry21 != null) {
      this._eastCountry21 = eastCountry21;
    }
    if (eastCountry22 != null) {
      this._eastCountry22 = eastCountry22;
    }
    if (eastCountry23 != null) {
      this._eastCountry23 = eastCountry23;
    }
    if (eastCountry24 != null) {
      this._eastCountry24 = eastCountry24;
    }
    if (eastCountry25 != null) {
      this._eastCountry25 = eastCountry25;
    }
    if (eastCountry26 != null) {
      this._eastCountry26 = eastCountry26;
    }
    if (eastCountry27 != null) {
      this._eastCountry27 = eastCountry27;
    }
    if (eastCountry28 != null) {
      this._eastCountry28 = eastCountry28;
    }
    if (eastCountry29 != null) {
      this._eastCountry29 = eastCountry29;
    }
    if (eastCountry30 != null) {
      this._eastCountry30 = eastCountry30;
    }
    if (eastCountry31 != null) {
      this._eastCountry31 = eastCountry31;
    }
    if (eastCountry32 != null) {
      this._eastCountry32 = eastCountry32;
    }
    if (eastCountry33 != null) {
      this._eastCountry33 = eastCountry33;
    }
    if (eastCountry34 != null) {
      this._eastCountry34 = eastCountry34;
    }
    if (suroolor != null) {
      this._suroolor = suroolor;
    }
    if (suroo1 != null) {
      this._suroo1 = suroo1;
    }
    if (joop1 != null) {
      this._joop1 = joop1;
    }
    if (suroo2 != null) {
      this._suroo2 = suroo2;
    }
    if (joop2 != null) {
      this._joop2 = joop2;
    }
    if (suroo3 != null) {
      this._suroo3 = suroo3;
    }
    if (joop3 != null) {
      this._joop3 = joop3;
    }
    if (suroo4 != null) {
      this._suroo4 = suroo4;
    }
    if (joop4 != null) {
      this._joop4 = joop4;
    }
    if (suroo5 != null) {
      this._suroo5 = suroo5;
    }
    if (joop5 != null) {
      this._joop5 = joop5;
    }
  }

  String? get title => _title;
  set title(String? title) => _title = title;
  String? get description => _description;
  set description(String? description) => _description = description;
  String? get name1 => _name1;
  set name1(String? name1) => _name1 = name1;
  String? get northAndBalcanCountry1 => _northAndBalcanCountry1;
  set northAndBalcanCountry1(String? northAndBalcanCountry1) =>
      _northAndBalcanCountry1 = northAndBalcanCountry1;
  String? get northAndBalcanCountry2 => _northAndBalcanCountry2;
  set northAndBalcanCountry2(String? northAndBalcanCountry2) =>
      _northAndBalcanCountry2 = northAndBalcanCountry2;
  String? get northAndBalcanCountry3 => _northAndBalcanCountry3;
  set northAndBalcanCountry3(String? northAndBalcanCountry3) =>
      _northAndBalcanCountry3 = northAndBalcanCountry3;
  String? get northAndBalcanCountry4 => _northAndBalcanCountry4;
  set northAndBalcanCountry4(String? northAndBalcanCountry4) =>
      _northAndBalcanCountry4 = northAndBalcanCountry4;
  String? get northAndBalcanCountry5 => _northAndBalcanCountry5;
  set northAndBalcanCountry5(String? northAndBalcanCountry5) =>
      _northAndBalcanCountry5 = northAndBalcanCountry5;
  String? get northAndBalcanCountry6 => _northAndBalcanCountry6;
  set northAndBalcanCountry6(String? northAndBalcanCountry6) =>
      _northAndBalcanCountry6 = northAndBalcanCountry6;
  String? get northAndBalcanCountry7 => _northAndBalcanCountry7;
  set northAndBalcanCountry7(String? northAndBalcanCountry7) =>
      _northAndBalcanCountry7 = northAndBalcanCountry7;
  String? get northAndBalcanCountry8 => _northAndBalcanCountry8;
  set northAndBalcanCountry8(String? northAndBalcanCountry8) =>
      _northAndBalcanCountry8 = northAndBalcanCountry8;
  String? get northAndBalcanCountry9 => _northAndBalcanCountry9;
  set northAndBalcanCountry9(String? northAndBalcanCountry9) =>
      _northAndBalcanCountry9 = northAndBalcanCountry9;
  String? get northAndBalcanCountry10 => _northAndBalcanCountry10;
  set northAndBalcanCountry10(String? northAndBalcanCountry10) =>
      _northAndBalcanCountry10 = northAndBalcanCountry10;
  String? get northAndBalcanCountry11 => _northAndBalcanCountry11;
  set northAndBalcanCountry11(String? northAndBalcanCountry11) =>
      _northAndBalcanCountry11 = northAndBalcanCountry11;
  String? get northAndBalcanCountry12 => _northAndBalcanCountry12;
  set northAndBalcanCountry12(String? northAndBalcanCountry12) =>
      _northAndBalcanCountry12 = northAndBalcanCountry12;
  String? get northAndBalcanCountry13 => _northAndBalcanCountry13;
  set northAndBalcanCountry13(String? northAndBalcanCountry13) =>
      _northAndBalcanCountry13 = northAndBalcanCountry13;
  String? get name2 => _name2;
  set name2(String? name2) => _name2 = name2;
  String? get chygushEuropeTitle1 => _chygushEuropeTitle1;
  set chygushEuropeTitle1(String? chygushEuropeTitle1) =>
      _chygushEuropeTitle1 = chygushEuropeTitle1;
  String? get chygushEuropeTitle2 => _chygushEuropeTitle2;
  set chygushEuropeTitle2(String? chygushEuropeTitle2) =>
      _chygushEuropeTitle2 = chygushEuropeTitle2;
  String? get eastCountry1 => _eastCountry1;
  set eastCountry1(String? eastCountry1) => _eastCountry1 = eastCountry1;
  String? get eastCountry2 => _eastCountry2;
  set eastCountry2(String? eastCountry2) => _eastCountry2 = eastCountry2;
  String? get eastCountry3 => _eastCountry3;
  set eastCountry3(String? eastCountry3) => _eastCountry3 = eastCountry3;
  String? get eastCountry4 => _eastCountry4;
  set eastCountry4(String? eastCountry4) => _eastCountry4 = eastCountry4;
  String? get eastCountry5 => _eastCountry5;
  set eastCountry5(String? eastCountry5) => _eastCountry5 = eastCountry5;
  String? get eastCountry6 => _eastCountry6;
  set eastCountry6(String? eastCountry6) => _eastCountry6 = eastCountry6;
  String? get eastCountry7 => _eastCountry7;
  set eastCountry7(String? eastCountry7) => _eastCountry7 = eastCountry7;
  String? get eastCountry8 => _eastCountry8;
  set eastCountry8(String? eastCountry8) => _eastCountry8 = eastCountry8;
  String? get eastCountry9 => _eastCountry9;
  set eastCountry9(String? eastCountry9) => _eastCountry9 = eastCountry9;
  String? get eastCountry10 => _eastCountry10;
  set eastCountry10(String? eastCountry10) => _eastCountry10 = eastCountry10;
  String? get eastCountry11 => _eastCountry11;
  set eastCountry11(String? eastCountry11) => _eastCountry11 = eastCountry11;
  String? get eastCountry12 => _eastCountry12;
  set eastCountry12(String? eastCountry12) => _eastCountry12 = eastCountry12;
  String? get eastCountry13 => _eastCountry13;
  set eastCountry13(String? eastCountry13) => _eastCountry13 = eastCountry13;
  String? get eastCountry14 => _eastCountry14;
  set eastCountry14(String? eastCountry14) => _eastCountry14 = eastCountry14;
  String? get eastCountry15 => _eastCountry15;
  set eastCountry15(String? eastCountry15) => _eastCountry15 = eastCountry15;
  String? get eastCountry16 => _eastCountry16;
  set eastCountry16(String? eastCountry16) => _eastCountry16 = eastCountry16;
  String? get eastCountry17 => _eastCountry17;
  set eastCountry17(String? eastCountry17) => _eastCountry17 = eastCountry17;
  String? get eastCountry18 => _eastCountry18;
  set eastCountry18(String? eastCountry18) => _eastCountry18 = eastCountry18;
  String? get eastCountry19 => _eastCountry19;
  set eastCountry19(String? eastCountry19) => _eastCountry19 = eastCountry19;
  String? get eastCountry20 => _eastCountry20;
  set eastCountry20(String? eastCountry20) => _eastCountry20 = eastCountry20;
  String? get eastCountry21 => _eastCountry21;
  set eastCountry21(String? eastCountry21) => _eastCountry21 = eastCountry21;
  String? get eastCountry22 => _eastCountry22;
  set eastCountry22(String? eastCountry22) => _eastCountry22 = eastCountry22;
  String? get eastCountry23 => _eastCountry23;
  set eastCountry23(String? eastCountry23) => _eastCountry23 = eastCountry23;
  String? get eastCountry24 => _eastCountry24;
  set eastCountry24(String? eastCountry24) => _eastCountry24 = eastCountry24;
  String? get eastCountry25 => _eastCountry25;
  set eastCountry25(String? eastCountry25) => _eastCountry25 = eastCountry25;
  String? get eastCountry26 => _eastCountry26;
  set eastCountry26(String? eastCountry26) => _eastCountry26 = eastCountry26;
  String? get eastCountry27 => _eastCountry27;
  set eastCountry27(String? eastCountry27) => _eastCountry27 = eastCountry27;
  String? get eastCountry28 => _eastCountry28;
  set eastCountry28(String? eastCountry28) => _eastCountry28 = eastCountry28;
  String? get eastCountry29 => _eastCountry29;
  set eastCountry29(String? eastCountry29) => _eastCountry29 = eastCountry29;
  String? get eastCountry30 => _eastCountry30;
  set eastCountry30(String? eastCountry30) => _eastCountry30 = eastCountry30;
  String? get eastCountry31 => _eastCountry31;
  set eastCountry31(String? eastCountry31) => _eastCountry31 = eastCountry31;
  String? get eastCountry32 => _eastCountry32;
  set eastCountry32(String? eastCountry32) => _eastCountry32 = eastCountry32;
  String? get eastCountry33 => _eastCountry33;
  set eastCountry33(String? eastCountry33) => _eastCountry33 = eastCountry33;
  String? get eastCountry34 => _eastCountry34;
  set eastCountry34(String? eastCountry34) => _eastCountry34 = eastCountry34;
  String? get suroolor => _suroolor;
  set suroolor(String? suroolor) => _suroolor = suroolor;
  String? get suroo1 => _suroo1;
  set suroo1(String? suroo1) => _suroo1 = suroo1;
  String? get joop1 => _joop1;
  set joop1(String? joop1) => _joop1 = joop1;
  String? get suroo2 => _suroo2;
  set suroo2(String? suroo2) => _suroo2 = suroo2;
  String? get joop2 => _joop2;
  set joop2(String? joop2) => _joop2 = joop2;
  String? get suroo3 => _suroo3;
  set suroo3(String? suroo3) => _suroo3 = suroo3;
  String? get joop3 => _joop3;
  set joop3(String? joop3) => _joop3 = joop3;
  String? get suroo4 => _suroo4;
  set suroo4(String? suroo4) => _suroo4 = suroo4;
  String? get joop4 => _joop4;
  set joop4(String? joop4) => _joop4 = joop4;
  String? get suroo5 => _suroo5;
  set suroo5(String? suroo5) => _suroo5 = suroo5;
  String? get joop5 => _joop5;
  set joop5(String? joop5) => _joop5 = joop5;

  EuropeCountriesCapital.fromJson(Map<String, dynamic> json) {
    _title = json['title'];
    _description = json['description'];
    _name1 = json['name1'];
    _northAndBalcanCountry1 = json['north_and_balcan_country1'];
    _northAndBalcanCountry2 = json['north_and_balcan_country2'];
    _northAndBalcanCountry3 = json['north_and_balcan_country3'];
    _northAndBalcanCountry4 = json['north_and_balcan_country4'];
    _northAndBalcanCountry5 = json['north_and_balcan_country5'];
    _northAndBalcanCountry6 = json['north_and_balcan_country6'];
    _northAndBalcanCountry7 = json['north_and_balcan_country7'];
    _northAndBalcanCountry8 = json['north_and_balcan_country8'];
    _northAndBalcanCountry9 = json['north_and_balcan_country9'];
    _northAndBalcanCountry10 = json['north_and_balcan_country10'];
    _northAndBalcanCountry11 = json['north_and_balcan_country11'];
    _northAndBalcanCountry12 = json['north_and_balcan_country12'];
    _northAndBalcanCountry13 = json['north_and_balcan_country13'];
    _name2 = json['name2'];
    _chygushEuropeTitle1 = json['chygush_europe_title1'];
    _chygushEuropeTitle2 = json['chygush_europe_title2'];
    _eastCountry1 = json['east_country1'];
    _eastCountry2 = json['east_country2'];
    _eastCountry3 = json['east_country3'];
    _eastCountry4 = json['east_country4'];
    _eastCountry5 = json['east_country5'];
    _eastCountry6 = json['east_country6'];
    _eastCountry7 = json['east_country7'];
    _eastCountry8 = json['east_country8'];
    _eastCountry9 = json['east_country9'];
    _eastCountry10 = json['east_country10'];
    _eastCountry11 = json['east_country11'];
    _eastCountry12 = json['east_country12'];
    _eastCountry13 = json['east_country13'];
    _eastCountry14 = json['east_country14'];
    _eastCountry15 = json['east_country15'];
    _eastCountry16 = json['east_country16'];
    _eastCountry17 = json['east_country17'];
    _eastCountry18 = json['east_country18'];
    _eastCountry19 = json['east_country19'];
    _eastCountry20 = json['east_country20'];
    _eastCountry21 = json['east_country21'];
    _eastCountry22 = json['east_country22'];
    _eastCountry23 = json['east_country23'];
    _eastCountry24 = json['east_country24'];
    _eastCountry25 = json['east_country25'];
    _eastCountry26 = json['east_country26'];
    _eastCountry27 = json['east_country27'];
    _eastCountry28 = json['east_country28'];
    _eastCountry29 = json['east_country29'];
    _eastCountry30 = json['east_country30'];
    _eastCountry31 = json['east_country31'];
    _eastCountry32 = json['east_country32'];
    _eastCountry33 = json['east_country33'];
    _eastCountry34 = json['east_country34'];
    _suroolor = json['suroolor'];
    _suroo1 = json['suroo1'];
    _joop1 = json['joop1'];
    _suroo2 = json['suroo2'];
    _joop2 = json['joop2'];
    _suroo3 = json['suroo3'];
    _joop3 = json['joop3'];
    _suroo4 = json['suroo4'];
    _joop4 = json['joop4'];
    _suroo5 = json['suroo5'];
    _joop5 = json['joop5'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this._title;
    data['description'] = this._description;
    data['name1'] = this._name1;
    data['north_and_balcan_country1'] = this._northAndBalcanCountry1;
    data['north_and_balcan_country2'] = this._northAndBalcanCountry2;
    data['north_and_balcan_country3'] = this._northAndBalcanCountry3;
    data['north_and_balcan_country4'] = this._northAndBalcanCountry4;
    data['north_and_balcan_country5'] = this._northAndBalcanCountry5;
    data['north_and_balcan_country6'] = this._northAndBalcanCountry6;
    data['north_and_balcan_country7'] = this._northAndBalcanCountry7;
    data['north_and_balcan_country8'] = this._northAndBalcanCountry8;
    data['north_and_balcan_country9'] = this._northAndBalcanCountry9;
    data['north_and_balcan_country10'] = this._northAndBalcanCountry10;
    data['north_and_balcan_country11'] = this._northAndBalcanCountry11;
    data['north_and_balcan_country12'] = this._northAndBalcanCountry12;
    data['north_and_balcan_country13'] = this._northAndBalcanCountry13;
    data['name2'] = this._name2;
    data['chygush_europe_title1'] = this._chygushEuropeTitle1;
    data['chygush_europe_title2'] = this._chygushEuropeTitle2;
    data['east_country1'] = this._eastCountry1;
    data['east_country2'] = this._eastCountry2;
    data['east_country3'] = this._eastCountry3;
    data['east_country4'] = this._eastCountry4;
    data['east_country5'] = this._eastCountry5;
    data['east_country6'] = this._eastCountry6;
    data['east_country7'] = this._eastCountry7;
    data['east_country8'] = this._eastCountry8;
    data['east_country9'] = this._eastCountry9;
    data['east_country10'] = this._eastCountry10;
    data['east_country11'] = this._eastCountry11;
    data['east_country12'] = this._eastCountry12;
    data['east_country13'] = this._eastCountry13;
    data['east_country14'] = this._eastCountry14;
    data['east_country15'] = this._eastCountry15;
    data['east_country16'] = this._eastCountry16;
    data['east_country17'] = this._eastCountry17;
    data['east_country18'] = this._eastCountry18;
    data['east_country19'] = this._eastCountry19;
    data['east_country20'] = this._eastCountry20;
    data['east_country21'] = this._eastCountry21;
    data['east_country22'] = this._eastCountry22;
    data['east_country23'] = this._eastCountry23;
    data['east_country24'] = this._eastCountry24;
    data['east_country25'] = this._eastCountry25;
    data['east_country26'] = this._eastCountry26;
    data['east_country27'] = this._eastCountry27;
    data['east_country28'] = this._eastCountry28;
    data['east_country29'] = this._eastCountry29;
    data['east_country30'] = this._eastCountry30;
    data['east_country31'] = this._eastCountry31;
    data['east_country32'] = this._eastCountry32;
    data['east_country33'] = this._eastCountry33;
    data['east_country34'] = this._eastCountry34;
    data['suroolor'] = this._suroolor;
    data['suroo1'] = this._suroo1;
    data['joop1'] = this._joop1;
    data['suroo2'] = this._suroo2;
    data['joop2'] = this._joop2;
    data['suroo3'] = this._suroo3;
    data['joop3'] = this._joop3;
    data['suroo4'] = this._suroo4;
    data['joop4'] = this._joop4;
    data['suroo5'] = this._suroo5;
    data['joop5'] = this._joop5;
    return data;
  }
}

class Usa {
  String? _title;
  String? _tema;
  String? _image;
  List<UsaStates>? _usaStates;
  String? _text;

  Usa(
      {String? title,
      String? tema,
      String? image,
      List<UsaStates>? usaStates,
      String? text}) {
    if (title != null) {
      this._title = title;
    }
    if (tema != null) {
      this._tema = tema;
    }
    if (image != null) {
      this._image = image;
    }
    if (usaStates != null) {
      this._usaStates = usaStates;
    }
    if (text != null) {
      this._text = text;
    }
  }

  String? get title => _title;
  set title(String? title) => _title = title;
  String? get tema => _tema;
  set tema(String? tema) => _tema = tema;
  String? get image => _image;
  set image(String? image) => _image = image;
  List<UsaStates>? get usaStates => _usaStates;
  set usaStates(List<UsaStates>? usaStates) => _usaStates = usaStates;
  String? get text => _text;
  set text(String? text) => _text = text;

  Usa.fromJson(Map<String, dynamic> json) {
    _title = json['title'];
    _tema = json['tema'];
    _image = json['image'];
    if (json['usa_states'] != null) {
      _usaStates = <UsaStates>[];
      json['usa_states'].forEach((v) {
        _usaStates!.add(new UsaStates.fromJson(v));
      });
    }
    _text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this._title;
    data['tema'] = this._tema;
    data['image'] = this._image;
    if (this._usaStates != null) {
      data['usa_states'] = this._usaStates!.map((v) => v.toJson()).toList();
    }
    data['text'] = this._text;
    return data;
  }
}

class UsaStates {
  String? _state;
  String? _population;
  String? _adminCountry;

  UsaStates({String? state, String? population, String? adminCountry}) {
    if (state != null) {
      this._state = state;
    }
    if (population != null) {
      this._population = population;
    }
    if (adminCountry != null) {
      this._adminCountry = adminCountry;
    }
  }

  String? get state => _state;
  set state(String? state) => _state = state;
  String? get population => _population;
  set population(String? population) => _population = population;
  String? get adminCountry => _adminCountry;
  set adminCountry(String? adminCountry) => _adminCountry = adminCountry;

  UsaStates.fromJson(Map<String, dynamic> json) {
    _state = json['state'];
    _population = json['population'];
    _adminCountry = json['admin_country'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['state'] = this._state;
    data['population'] = this._population;
    data['admin_country'] = this._adminCountry;
    return data;
  }
}
