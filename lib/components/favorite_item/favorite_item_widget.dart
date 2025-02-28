import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'favorite_item_model.dart';
export 'favorite_item_model.dart';

class FavoriteItemWidget extends StatefulWidget {
  const FavoriteItemWidget({super.key});

  @override
  State<FavoriteItemWidget> createState() => _FavoriteItemWidgetState();
}

class _FavoriteItemWidgetState extends State<FavoriteItemWidget> {
  late FavoriteItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FavoriteItemModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 80.0,
            height: 80.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                'assets/images/Img.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                        child: Text(
                          'Premium vegetable salad',
                          maxLines: 2,
                          style:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                    ToggleIcon(
                      onPressed: () async {
                        setState(() => _model.liked = !_model.liked);
                      },
                      value: _model.liked,
                      onIcon: Icon(
                        FFIcons.kheartFilled,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 24.0,
                      ),
                      offIcon: Icon(
                        FFIcons.kheart,
                        color: FlutterFlowTheme.of(context).error,
                        size: 16.0,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.star_rounded,
                              color: FlutterFlowTheme.of(context).warning,
                              size: 16.0,
                            ),
                            Text(
                              '4.4',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ].divide(const SizedBox(width: 4.0)),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              FFIcons.ktruck,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 16.0,
                            ),
                            Text(
                              '12 Minute',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ].divide(const SizedBox(width: 4.0)),
                        ),
                      ].divide(const SizedBox(width: 10.0)),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        RichText(
                          textScaler: MediaQuery.of(context).textScaler,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: '\$ ',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              TextSpan(
                                text: '6.17',
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      letterSpacing: 0.0,
                                    ),
                              )
                            ],
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  letterSpacing: 0.0,
                                ),
                          ),
                          maxLines: 2,
                        ),
                      ],
                    ),
                  ],
                ),
              ].divide(const SizedBox(height: 10.0)),
            ),
          ),
        ].divide(const SizedBox(width: 10.0)),
      ),
    );
  }
}
