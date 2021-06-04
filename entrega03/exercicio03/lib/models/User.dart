class User {
  String _id;
  String _firstName;
  String _lastName;
  String _email;

  User(this._id, this._firstName, this._lastName, this._email);

  String get id => this._id;
  String get firstName => this._firstName;
  String get lastName => this._lastName;
  String get email => this._email;
}
