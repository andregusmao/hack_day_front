class CompanyModel {
  int? id;
  String name;
  String address;
  int number;
  String zipCode;
  String district;
  String city;
  String state;
  String? phone;
  String? email;

  CompanyModel({
    this.id,
    required this.name,
    required this.address,
    required this.number,
    required this.zipCode,
    required this.district,
    required this.city,
    required this.state,
    this.phone,
    this.email,
  });

  CompanyModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        address = json['address'],
        number = json['number'],
        zipCode = json['zip_code'],
        district = json['district'],
        city = json['city'],
        state = json['state'],
        phone = json['phone'],
        email = json['email'];

  static List<CompanyModel> fromJsonList(List<dynamic> list) =>
      list.map((company) => CompanyModel.fromJson(company)).toList();

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'address': address,
        'number': number,
        'zip_code': zipCode,
        'district': district,
        'city': city,
        'state': state,
        'phone': phone,
        'email': email
      };
}
