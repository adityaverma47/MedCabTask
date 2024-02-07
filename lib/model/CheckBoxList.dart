class CheckListDataModel {
  CheckListDataModel({
    required this.data,
    required this.enabled,
  });

  String data;
  bool enabled = false;
}
List<CheckListDataModel> checkListData = [
  CheckListDataModel(
    data: "Choose the test you need to add it to cart.",
    enabled: true,
  ),
  CheckListDataModel(
    data: "Add the patient/Choose the patient",
    enabled: true,
  ),
  CheckListDataModel(
    data: "Provide personal information including name and address.",
    enabled: true,
  ),
  CheckListDataModel(
    data: "Book a slot for sample collection.",
    enabled: true,
  ),
  CheckListDataModel(
    data: "Pay for the test including a secure online payment method.",
    enabled: true,
  ),
];