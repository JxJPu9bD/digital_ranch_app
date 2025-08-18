import '../core/network/dio_client.dart';
import '../core/constants/api_constants.dart';

class RanchService {
  final DioClient _dioClient = DioClient();

  Future<List<Map<String, dynamic>>> getRanchList({
    int page = 1,
    int pageSize = 10,
    Map<String, dynamic>? filters,
  }) async {
    final response = await _dioClient.get(
      ApiConstants.ranchList,
      queryParameters: {
        'page': page,
        'pageSize': pageSize,
        if (filters != null) ...filters,
      },
    );
    return List<Map<String, dynamic>>.from(response.data['list']);
  }

  Future<Map<String, dynamic>> getRanchDetail(String ranchId) async {
    final response = await _dioClient.get(
      '${ApiConstants.ranchDetail}/$ranchId',
    );
    return response.data;
  }

  Future<Map<String, dynamic>> getRanchStats(String ranchId) async {
    final response = await _dioClient.get(
      '${ApiConstants.ranchStats}/$ranchId',
    );
    return response.data;
  }
}
