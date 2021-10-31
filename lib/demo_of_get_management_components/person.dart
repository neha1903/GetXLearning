class Person {
  String _firstName = "";
  String _lastName = "";
  String _someRandomText = "";

  void setFirstName(String firstName) {
    _firstName = firstName;
  }

  void setLastName(String lastName) {
    _lastName = lastName;
  }

  void setRandomText(String random) {
    _someRandomText = random;
  }

  String getFirstName() {
    return _firstName;
  }

  String getLastName() {
    return _lastName;
  }

  String getSomeRandomText() {
    return _someRandomText;
  }
}
