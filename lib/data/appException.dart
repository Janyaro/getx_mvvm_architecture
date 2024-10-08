class Appexception implements Exception {
  final _message;
  final _prefix;
  Appexception([this._message, this._prefix]);
  @override
  String toString() {
    // TODO: implement toString
    return '$_message $_prefix';
  }
}

class internetException extends Appexception {
  internetException([String? message])
      : super(message, 'Internet connection Error');
}

class RequestTimeOut extends Appexception {
  RequestTimeOut([String? message]) : super(message, 'Request Time Out error');
}

class ServerError extends Appexception {
  ServerError([String? message]) : super(message, 'internal server error');
}

class InvalidUrl extends Appexception {
  InvalidUrl([String? message]) : super(message, 'Invalid Url Exception');
}

class FetchDataException extends Appexception {
  FetchDataException([String? message])
      : super(message, 'Error while communication');
}
