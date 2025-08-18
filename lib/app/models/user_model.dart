class UserModel {
  final String id;
  final String username;
  final String name;
  final String? avatar;
  final String? phone;
  final String? email;
  final List<String> roles;
  final String? companyId;
  final String? companyName;
  final DateTime? lastLoginTime;
  final DateTime createdAt;
  final DateTime updatedAt;

  UserModel({
    required this.id,
    required this.username,
    required this.name,
    this.avatar,
    this.phone,
    this.email,
    required this.roles,
    this.companyId,
    this.companyName,
    this.lastLoginTime,
    required this.createdAt,
    required this.updatedAt,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      username: json['username'],
      name: json['name'],
      avatar: json['avatar'],
      phone: json['phone'],
      email: json['email'],
      roles: List<String>.from(json['roles']),
      companyId: json['companyId'],
      companyName: json['companyName'],
      lastLoginTime: json['lastLoginTime'] != null
          ? DateTime.parse(json['lastLoginTime'])
          : null,
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'username': username,
      'name': name,
      'avatar': avatar,
      'phone': phone,
      'email': email,
      'roles': roles,
      'companyId': companyId,
      'companyName': companyName,
      'lastLoginTime': lastLoginTime?.toIso8601String(),
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }
}
