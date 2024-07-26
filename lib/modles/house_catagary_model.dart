
enum HouseCatagaryModel {house, apartement, flat, banglo, carHouse}

extension HouseCatagaryModelExtenstion on HouseCatagaryModel{
  String get title {
    switch(this) {
      case HouseCatagaryModel.apartement:
        return"Apartement";
      case HouseCatagaryModel.house:
        return "House";
      case HouseCatagaryModel.flat:
        return "Flat";
      case HouseCatagaryModel.banglo:
        return"Banglo";
      case HouseCatagaryModel.carHouse:
        return "Car Home";
    }
  }
}