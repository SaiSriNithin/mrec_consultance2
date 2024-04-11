// ignore_for_file: public_member_api_docs, sort_constructors_first
class TestModel {
  String Name;
  String Subtext;
  TestModel({
    required this.Name,
    required this.Subtext,
  });
}

class Total {
  String Name;
  String AssetPath;

  List<TestModel> Tests;
  Total({required this.Name, required this.Tests, required this.AssetPath});
}
