class ApiResponse<T> {
  final T? data;
  final int statusCode;
  final String? errorMessage;

  ApiResponse({this.data, this.errorMessage, required this.statusCode});
}
