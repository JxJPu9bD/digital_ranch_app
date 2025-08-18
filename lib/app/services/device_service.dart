import '../core/network/dio_client.dart';
import '../core/constants/api_constants.dart';

class DeviceService {
  final DioClient _dioClient = DioClient();

  Future<List<Map<String, dynamic>>> getDeviceList({
    int page = 1,
    int pageSize = 10,
    Map<String, dynamic>? filters,
  }) async {
    final response = await _dioClient.get(
      ApiConstants.deviceList,
      queryParameters: {
        'page': page,
        'pageSize': pageSize,
        if (filters != null) ...filters,
      },
    );
    return List<Map<String, dynamic>>.from(response.data['list']);
  }

  Future<Map<String, dynamic>> getDeviceDetail(String deviceId) async {
    final response = await _dioClient.get(
      '${ApiConstants.deviceDetail}/$deviceId',
    );
    return response.data;
  }

  Future<void> bindDevice(String deviceId, Map<String, dynamic> data) async {
    await _dioClient.post(
      '${ApiConstants.deviceBind}/$deviceId',
      data: data,
    );
  }

  Future<void> unbindDevice(String deviceId) async {
    await _dioClient.post(
      '${ApiConstants.deviceUnbind}/$deviceId',
    );
  }
}
