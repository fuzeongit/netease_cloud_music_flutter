class RestfulResult<T> {
  int code;
  String message;
  T? data;

  RestfulResult({required this.code, required this.message, this.data});
}
