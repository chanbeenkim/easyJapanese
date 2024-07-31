class CheckListItem {
  String name;
  bool isChecked;

  CheckListItem(this.name, {this.isChecked = false});

  factory CheckListItem.fromJson(Map<String, dynamic> json) {
    return CheckListItem(json['name'], isChecked: json['isChecked']);
  }

  Map<String, dynamic> toJson() {
    return {'name': name, 'isChecked': isChecked};
  }
}
