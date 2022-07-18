import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GroupslistWidget extends StatefulWidget {
  const GroupslistWidget({Key key}) : super(key: key);

  @override
  _GroupslistWidgetState createState() => _GroupslistWidgetState();
}

class _GroupslistWidgetState extends State<GroupslistWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          'Page Title',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Lexend Deca',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: StreamBuilder<List<ChatsRecord>>(
            stream: queryChatsRecord(
              queryBuilder: (chatsRecord) => chatsRecord
                  .where('user_a', isEqualTo: currentUserReference)
                  .where('user_b', isEqualTo: currentUserReference),
            ),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: CircularProgressIndicator(
                      color: FlutterFlowTheme.of(context).primaryColor,
                    ),
                  ),
                );
              }
              List<ChatsRecord> columnChatsRecordList = snapshot.data;
              return Column(
                mainAxisSize: MainAxisSize.max,
                children:
                    List.generate(columnChatsRecordList.length, (columnIndex) {
                  final columnChatsRecord = columnChatsRecordList[columnIndex];
                  return Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 20),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.network(
                            'https://picsum.photos/seed/788/600',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF4B39EF),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                              child: Text(
                                columnChatsRecord.lastMessage,
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              );
            },
          ),
        ),
      ),
    );
  }
}
