class BmiModel {
  final int _height;
  final int _weight;
  final int _age;
  final String _gender;

  BmiModel({
    required int height,
    required int weight,
    required int age,
    required String gender,
  })  : _height = height,
        _weight = weight,
        _age = age,
        _gender = gender;
  int get height => _height;
  int get weight => _weight;
  int get age => _age;
  String get gender => _gender;
}
