class AddressModel {
  final String street;
  final String city;

  AddressModel({required this.street, required this.city});

  factory AddressModel.fromJson(Map<String, dynamic> json) {
    return AddressModel(
      street: json['logradouro'] ?? '',
      city: json['localidade'] ?? '',
    );
  }
}
