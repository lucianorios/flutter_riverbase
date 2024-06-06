import '../http/base_model.dart';
import '../http/http_manager.dart';

class BaseService<T extends BaseModel> {
  late HttpManager<T> manager;
  late String baseUrl;
  final ObjectCreator<T> creator;

  BaseService(this.creator, this.baseUrl) {
    manager = HttpManager<T>(this.creator);
  }
}
