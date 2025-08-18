class CattleModel {
  final String id;
  final String earTag;
  final String ranchId;
  final String ranchName;
  final String breed;
  final String gender;
  final DateTime birthDate;
  final double weight;
  final String status;
  final String health;
  final String? parentMaleId;
  final String? parentFemaleId;
  final DateTime entryDate;
  final DateTime? exitDate;
  final String? exitReason;
  final DateTime createdAt;
  final DateTime updatedAt;

  CattleModel({
    required this.id,
    required this.earTag,
    required this.ranchId,
    required this.ranchName,
    required this.breed,
    required this.gender,
    required this.birthDate,
    required this.weight,
    required this.status,
    required this.health,
    this.parentMaleId,
    this.parentFemaleId,
    required this.entryDate,
    this.exitDate,
    this.exitReason,
    required this.createdAt,
    required this.updatedAt,
  });

  factory CattleModel.fromJson(Map<String, dynamic> json) {
    return CattleModel(
      id: json['id'],
      earTag: json['earTag'],
      ranchId: json['ranchId'],
      ranchName: json['ranchName'],
      breed: json['breed'],
      gender: json['gender'],
      birthDate: DateTime.parse(json['birthDate']),
      weight: json['weight'].toDouble(),
      status: json['status'],
      health: json['health'],
      parentMaleId: json['parentMaleId'],
      parentFemaleId: json['parentFemaleId'],
      entryDate: DateTime.parse(json['entryDate']),
      exitDate: json['exitDate'] != null ? DateTime.parse(json['exitDate']) : null,
      exitReason: json['exitReason'],
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'earTag': earTag,
      'ranchId': ranchId,
      'ranchName': ranchName,
      'breed': breed,
      'gender': gender,
      'birthDate': birthDate.toIso8601String(),
      'weight': weight,
      'status': status,
      'health': health,
      'parentMaleId': parentMaleId,
      'parentFemaleId': parentFemaleId,
      'entryDate': entryDate.toIso8601String(),
      'exitDate': exitDate?.toIso8601String(),
      'exitReason': exitReason,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }
}
