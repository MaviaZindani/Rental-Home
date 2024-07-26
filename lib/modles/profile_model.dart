class ProfileModel {
  final String _profileImage;
  final String _profileName;
  final String _profileCaption;
  final String _birthDate;

  ProfileModel(this._profileImage, this._profileName, this._profileCaption, this._birthDate);

  String get ProfileImage => _profileImage;
  String get ProfileName => _profileName;
  String get ProfileCaption => _profileCaption;
  String get BirthDate => _birthDate;


}