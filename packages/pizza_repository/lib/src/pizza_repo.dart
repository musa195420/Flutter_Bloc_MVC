import 'models/pizza.dart';

abstract class PizzaRepository {
  Future<List<Pizza>> getPizzas();
}
