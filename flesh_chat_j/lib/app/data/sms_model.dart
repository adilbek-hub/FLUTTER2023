import 'dart:convert';

class SmsModel {
  SmsModel(this.send, this.sms);
  final String send;
  final String sms;

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'send': send});
    result.addAll({'sms': sms});

    return result;
  }

  factory SmsModel.fromMap(Map<String, dynamic> map) {
    return SmsModel(
      map['send'] ?? '',
      map['sms'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory SmsModel.fromJson(String source) =>
      SmsModel.fromMap(json.decode(source));
}
