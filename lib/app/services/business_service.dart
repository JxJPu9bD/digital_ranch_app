import 'package:dio/dio.dart';
import '../core/network/dio_client.dart';
import '../core/constants/api_constants.dart';

class BusinessService {
  final DioClient _dioClient = DioClient();

  /// 入场登记
  Future<void> submitEntryRecord(Map<String, dynamic> formData, String? imagePath) async {
    // 确保发送 JSON 格式的数据
    formData.remove('regulatoryEarTag');
    formData.remove('projectSerialNumber'); 
    formData.remove('projectType');
    await _dioClient.post(
      ApiConstants.entryRecord,
      data: formData,
    );
  }

  /// 批量入场登记
  Future<void> submitBatchEntry(List<Map<String, dynamic>> records) async {
    await _dioClient.post(
      ApiConstants.batchEntry,
      data: {'records': records},
    );
  }

  /// 出场登记
  Future<void> submitExitRecord(Map<String, dynamic> formData) async {
    await _dioClient.post(
      ApiConstants.exitRecord,
      data: formData,
    );
  }

  /// 转场登记
  Future<void> submitTransferRecord(Map<String, dynamic> formData) async {
    await _dioClient.post(
      ApiConstants.transferRecord,
      data: formData,
    );
  }

  /// 获取入场记录列表
  Future<List<Map<String, dynamic>>> getEntryRecords({
    required int page,
    required int size,
    Map<String, dynamic>? filters,
  }) async {
    final response = await _dioClient.get(
      ApiConstants.entryRecords,
      queryParameters: {
        'page': page,
        'size': size,
        if (filters != null) ...filters,
      },
    );
    return List<Map<String, dynamic>>.from(response.data['records']);
  }
}
