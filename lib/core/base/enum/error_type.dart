enum ErrorType {
  unknown(-1),
  notFound(404),
  conflict(409),
  badRequest(400),
  internalServerError(500);

  const ErrorType(this.code);

  final int code;
}
