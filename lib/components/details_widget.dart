import 'package:pixelfield/components/detail_tile_item_widget.dart';
import 'package:flutter/material.dart';

class DetailsWidget extends StatefulWidget {
  const DetailsWidget({super.key});

  @override
  State<DetailsWidget> createState() => _DetailsWidgetState();
}

class _DetailsWidgetState extends State<DetailsWidget> {
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
  Map<String, dynamic> detailTileItemModels = {};

  Map<String, dynamic> getDetailTileItemModel(String uniqueKey, int index) {
    if (!detailTileItemModels.containsKey(uniqueKey)) {
      detailTileItemModels[uniqueKey]!.initState(context);
    }
    return detailTileItemModels[uniqueKey]!;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    detailTileItemModels.forEach((key, model) => model.dispose());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(0.0),
          topRight: Radius.circular(0.0),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 32.0),
            child: Builder(
              builder: (context) {
                final detailsListView = detailsList.toList();

                return ListView.builder(
                  padding: EdgeInsets.zero,
                  primary: false,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: detailsListView.length,
                  itemBuilder: (context, detailsListViewIndex) {
                    return DetailTileItemWidget(
                      key: Key(
                        'Keycy5_${detailsListViewIndex.toString()}',
                      ),
                      title: detailsList.elementAtOrNull(detailsListViewIndex)!,
                      subtitle: 'Text',
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
