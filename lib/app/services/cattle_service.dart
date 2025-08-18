import '../core/network/dio_client.dart';
import '../core/constants/api_constants.dart';

class CattleService {
  final DioClient _dioClient = DioClient();

  Future<List<Map<String, dynamic>>> getCattleList({
    int page = 1,
    int pageSize = 10,
    Map<String, dynamic>? filters,
  }) async {
    final response = await _dioClient.get(
      ApiConstants.cattleList,
      queryParameters: {
        'page': page,
        'pageSize': pageSize,
        if (filters != null) ...filters,
      },
    );
    return List<Map<String, dynamic>>.from(response.data['list']);
  }

  Future<Map<String, dynamic>> getCattleDetail(String cattleId) async {
    final response = await _dioClient.get(
      '${ApiConstants.cattleDetail}/$cattleId',
    );
    return response.data;
  }

  Future<void> cattleEntry(Map<String, dynamic> data) async {
    await _dioClient.post(
      ApiConstants.cattleEntry,
      data: data,
    );
  }

  Future<void> cattleExit(String cattleId, Map<String, dynamic> data) async {
    await _dioClient.post(
      '${ApiConstants.cattleExit}/$cattleId',
      data: data,
    );
  }

  Future<void> cattleTransfer(String cattleId, Map<String, dynamic> data) async {
    await _dioClient.post(
      '${ApiConstants.cattleTransfer}/$cattleId',
      data: data,
    );
  }
}
