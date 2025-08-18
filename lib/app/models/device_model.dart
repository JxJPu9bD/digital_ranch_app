class DeviceModel {
  final String id;
  final String deviceNo;
  final String type;
  final String status;
  final String? ranchId;
  final String? ranchName;
  final String? cattleId;
  final String? cattleEarTag;
  final Map<String, dynamic>? lastData;
  final DateTime? lastUpdateTime;
  final DateTime activationTime;
  final DateTime? expiryTime;
  final DateTime createdAt;
  final DateTime updatedAt;

  DeviceModel({
    required this.id,
    required this.deviceNo,
    required this.type,
    required this.status,
    this.ranchId,
    this.ranchName,
    this.cattleId,
    this.cattleEarTag,
    this.lastData,
    this.lastUpdateTime,
    required this.activationTime,
    this.expiryTime,
    required this.createdAt,
    required this.updatedAt,
  });

  factory DeviceModel.fromJson(Map<String, dynamic> json) {
    return DeviceModel(
      id: json['id'],
      deviceNo: json['deviceNo'],
      type: json['type'],
      status: json['status'],
      ranchId: json['ranchId'],
      ranchName: json['ranchName'],
      cattleId: json['cattleId'],
      cattleEarTag: json['cattleEarTag'],
      lastData: json['lastData'],
      lastUpdateTime: json['lastUpdateTime'] != null
          ? DateTime.parse(json['lastUpdateTime'])
          : null,
      activationTime: DateTime.parse(json['activationTime']),
      expiryTime:
          json['expiryTime'] != null ? DateTime.parse(json['expiryTime']) : null,
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'deviceNo': deviceNo,
      'type': type,
      'status': status,
      'ranchId': ranchId,
      'ranchName': ranchName,
      'cattleId': cattleId,
      'cattleEarTag': cattleEarTag,
      'lastData': lastData,
      'lastUpdateTime': lastUpdateTime?.toIso8601String(),
      'activationTime': activationTime.toIso8601String(),
      'expiryTime': expiryTime?.toIso8601String(),
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }
}
