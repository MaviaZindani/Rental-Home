import 'package:houseapp/modles/gallery_model.dart';
import 'package:houseapp/modles/profile_model.dart';

class HouseCardmodel {
  final String _thumnil;
  final String _title;
  final String _subTitle;
  final String _badrooms;
  final String _bathrooms;
  final String _garage;
  final String _location;
  final ProfileModel _profileModel;
  final String _discription;
  final int _price;
  final GalleryModel _galleryModel;

  HouseCardmodel(
      this._thumnil,
      this._title,
      this._subTitle,
      this._badrooms,
      this._bathrooms,
      this._garage,
      this._location,
      this._profileModel,
      this._discription,
      this._price,
      this._galleryModel);

   String get Thumnil => _thumnil;
   String get Title => _title;
   String get SubTitle => _subTitle;
   String get Badrooms => _badrooms;
   String get Bathrooms => _bathrooms;
   String get Garage => _garage;
   String get Location => _location;
   ProfileModel get ProfileModels => _profileModel;
   String get Discription => _discription;
   int get Price => _price;
   GalleryModel get GalleryModels => _galleryModel;
}
