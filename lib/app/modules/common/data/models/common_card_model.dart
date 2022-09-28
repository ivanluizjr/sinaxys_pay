class CommonCardModel {
  String? name;
  String? cardNumber;
  int? securityCode;
  String? memberSince;
  String? validThru;

  CommonCardModel(
      {required this.name,
      required this.cardNumber,
      required this.securityCode,
      required this.memberSince,
      required this.validThru});
}
