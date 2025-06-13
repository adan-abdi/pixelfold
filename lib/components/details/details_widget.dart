import 'package:pixelfield/components/detail_tile_item/detail_tile_item_widget.dart';
import 'package:flutter/material.dart';
import 'details_model.dart';
export 'details_model.dart';

class DetailsWidget extends StatefulWidget {
  const DetailsWidget({super.key});

  @override
  State<DetailsWidget> createState() => _DetailsWidgetState();
}

class _DetailsWidgetState extends State<DetailsWidget> {
  late DetailsModel _model;

  @override
  void initState() {
    super.initState();
    _model = DetailsModel();
    _model.initState(context);
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(0.0),
          topRight: Radius.circular(0.0),
        ),
      ),
      child: Container(
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
                  final detailsListView = _model.detailsList.toList();

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
                        title: _model.detailsList
                            .elementAtOrNull(detailsListViewIndex)!,
                        subtitle: 'Text',
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
