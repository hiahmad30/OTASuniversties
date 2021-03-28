class StudentModel {
  String status;
  String name;
  String photoUrl;

  StudentModel({this.status, this.name, this.photoUrl});

  StudentModel.fromJson(Map<String, dynamic> json) {
    this.status = json['status'];
    this.name = json['name'];
    this.photoUrl = json['photoUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['status'] = this.status;
    data['photoUrl'] = this.photoUrl;
    return data;
  }
}
