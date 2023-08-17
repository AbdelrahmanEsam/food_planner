
class ApiResponse<ResultType> {
  Status status;
  ResultType? data;
  Error? error;

  ApiResponse(this.status, this.data, this.error);

  static ApiResponse loading<ResultType>() {
    return ApiResponse<ResultType>(Status.LOADING, null, null);
  }


  static ApiResponse success<ResultType>(ResultType data) {
    return ApiResponse<ResultType>(Status.SUCCESS, data, null);
  }

  static ApiResponse failed<ResultType>(Error error) {
    return ApiResponse<ResultType>(Status.ERROR, null, error);
  }
}

class Error {
  int statusCode;
  String errorMessage;
  String errorBody;

  Error(this.statusCode, this.errorMessage, this.errorBody);}

enum Status { LOADING, SUCCESS, ERROR }