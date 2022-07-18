import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../create_post/create_post_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatModOptionsWidget extends StatefulWidget {
  const ChatModOptionsWidget({
    Key key,
    this.bannedText,
    this.bannedImage,
  }) : super(key: key);

  final DocumentReference bannedText;
  final DocumentReference bannedImage;

  @override
  _ChatModOptionsWidgetState createState() => _ChatModOptionsWidgetState();
}

class _ChatModOptionsWidgetState extends State<ChatModOptionsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryDark,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
            child: StreamBuilder<List<ChatMessagesRecord>>(
              stream: queryChatMessagesRecord(
                singleRecord: true,
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
                List<ChatMessagesRecord> containerChatMessagesRecordList =
                    snapshot.data;
                // Return an empty Container when the document does not exist.
                if (snapshot.data.isEmpty) {
                  return Container();
                }
                final containerChatMessagesRecord =
                    containerChatMessagesRecordList.isNotEmpty
                        ? containerChatMessagesRecordList.first
                        : null;
                return InkWell(
                  onTap: () async {
                    final chatMessagesUpdateData = createChatMessagesRecordData(
                      text: '******',
                      image: '*****',
                    );
                    await widget.bannedText.update(chatMessagesUpdateData);
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).dark600,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 3,
                          color: Color(0x3E000000),
                          offset: Offset(0, 2),
                        )
                      ],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(8, 12, 8, 12),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                                child: Text(
                                  'Delete Message',
                                  style: FlutterFlowTheme.of(context)
                                      .title3
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                                child: Text(
                                  'Share a video of your pup.',
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).dark600,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 3,
                    color: Color(0x3E000000),
                    offset: Offset(0, 2),
                  )
                ],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8, 8, 16, 8),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                              child: Text(
                                'Create Post',
                                style: FlutterFlowTheme.of(context)
                                    .title3
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: FlutterFlowTheme.of(context)
                                          .tertiaryColor,
                                    ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                                child: Text(
                                  'Share a photo that will appear in the timeline.',
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () async {
              await Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.bottomToTop,
                  duration: Duration(milliseconds: 200),
                  reverseDuration: Duration(milliseconds: 200),
                  child: CreatePostWidget(),
                ),
              );
            },
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).dark600,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 3,
                    color: Color(0x3E000000),
                    offset: Offset(0, 2),
                  )
                ],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8, 12, 8, 12),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                          child: Text(
                            'Ban User',
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Lexend Deca',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                          child: Text(
                            'Share photos on your timeline.',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
