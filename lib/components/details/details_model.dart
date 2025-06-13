import '/components/detail_tile_item/detail_tile_item_widget.dart';
import '/components/detail_tile_item/detail_tile_item_model.dart';
import 'package:flutter/material.dart';

class DetailsModel {
  ///  Local state fields for this component.

  List<String> detailsList = [
    'Distillery',
    'Region',
    'Country',
    'Type',
    'Age statement',
    'Filled',
    'Bottled',
    'Cask Number',
    'ABV',
    'Size',
    'Finish'
  ];
  void addToDetailsList(String item) => detailsList.add(item);
  void removeFromDetailsList(String item) => detailsList.remove(item);
  void removeAtIndexFromDetailsList(int index) => detailsList.removeAt(index);
  void insertAtIndexInDetailsList(int index, String item) =>
      detailsList.insert(index, item);
  void updateDetailsListAtIndex(int index, Function(String) updateFn) =>
      detailsList[index] = updateFn(detailsList[index]);

  ///  State fields for stateful widgets in this component.

  // Models for DetailTileItem dynamic component.
  Map<String, DetailTileItemModel> detailTileItemModels = {};
  BuildContext? _context;

  void initState(BuildContext context) {
    _context = context;
    // No need to initialize detailTileItemModels here, as they will be created dynamically.
  }

  void dispose() {
    detailTileItemModels.forEach((key, model) => model.dispose());
  }

  DetailTileItemModel getDetailTileItemModel(String uniqueKey, int index) {
    if (!detailTileItemModels.containsKey(uniqueKey)) {
      detailTileItemModels[uniqueKey] = DetailTileItemModel();
      detailTileItemModels[uniqueKey]!.initState(_context!);
    }
    return detailTileItemModels[uniqueKey]!;
  }
}
