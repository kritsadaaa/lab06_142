class Hobby {
  final String name;
  bool value;

  Hobby({required this.name, required this.value});

  static List<Hobby> getHobby() {
    return [
      Hobby(name: "นอน", value: false),
      Hobby(name: "กิน", value: false),
      Hobby(name: "หายใจ", value: false),
      Hobby(name: "นอน", value: false),
      Hobby(name: "กิน", value: false),
      Hobby(name: "หายใจ", value: false),
    ];
  }
}
