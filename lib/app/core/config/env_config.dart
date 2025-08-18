enum Environment {
  dev,
  prod,
}

class EnvConfig {
  static final EnvConfig _instance = EnvConfig._internal();
  factory EnvConfig() => _instance;
  EnvConfig._internal();

  Environment _environment = Environment.dev;
  Environment get environment => _environment;

  void setEnvironment(Environment env) {
    _environment = env;
  }

  String get baseUrl {
    switch (_environment) {
      case Environment.dev:
        return 'http://222.74.177.138:18085';
      case Environment.prod:
        return 'https://api.example.com'; // TODO: 替换为生产环境地址
      default:
        return 'http://222.74.177.138:18085';
    }
  }

  Map<String, dynamic> get config {
    return {
      'baseUrl': baseUrl,
      'environment': _environment.toString(),
      'timeout': 15000,
      'connectTimeout': 15000,
      'receiveTimeout': 15000,
    };
  }
}
