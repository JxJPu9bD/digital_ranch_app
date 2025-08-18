class RanchModel {
  final String id;
  final String name;
  final String? description;
  final String address;
  final double latitude;
  final double longitude;
  final int capacity;
  final int currentCount;
  final String managerId;
  final String managerName;
  final String? managerPhone;
  final List<String> staffIds;
  final DateTime createdAt;
  final DateTime updatedAt;

  RanchModel({
    required this.id,
    required this.name,
    this.description,
    required this.address,
    required this.latitude,
    required this.longitude,
    required this.capacity,
    required this.currentCount,
    required this.managerId,
    required this.managerName,
    this.managerPhone,
    required this.staffIds,
    required this.createdAt,
    required this.updatedAt,
  });

  factory RanchModel.fromJson(Map<String, dynamic> json) {
    return RanchModel(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      address: json['address'],
      latitude: json['latitude'].toDouble(),
      longitude: json['longitude'].toDouble(),
      capacity: json['capacity'],
      currentCount: json['currentCount'],
      managerId: json['managerId'],
      managerName: json['managerName'],
      managerPhone: json['managerPhone'],
      staffIds: List<String>.from(json['staffIds']),
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'address': address,
      'latitude': latitude,
      'longitude': longitude,
      'capacity': capacity,
      'currentCount': currentCount,
      'managerId': managerId,
      'managerName': managerName,
      'managerPhone': managerPhone,
      'staffIds': staffIds,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }
}
