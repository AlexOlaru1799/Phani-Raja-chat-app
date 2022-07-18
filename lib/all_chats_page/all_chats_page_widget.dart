import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../chat_page/chat_page_widget.dart';
import '../create_group_chat/create_group_chat_widget.dart';
import '../flutter_flow/chat/index.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AllChatsPageWidget extends StatefulWidget {
  const AllChatsPageWidget({Key key}) : super(key: key);

  @override
  _AllChatsPageWidgetState createState() => _AllChatsPageWidgetState();
}

class _AllChatsPageWidgetState extends State<AllChatsPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          'Personal Messages',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Lexend Deca',
                color: FlutterFlowTheme.of(context).primaryText,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.of(context).background,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CreateGroupChatWidget(),
            ),
          );
        },
        backgroundColor: Color(0xF5000000),
        elevation: 8,
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 36,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
          child: StreamBuilder<List<ChatsRecord>>(
            stream: queryChatsRecord(
              queryBuilder: (chatsRecord) => chatsRecord
                  .where('users', arrayContains: currentUserReference)
                  .orderBy('last_message_time', descending: true),
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
              List<ChatsRecord> listViewChatsRecordList = snapshot.data;
              return ListView.builder(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                itemCount: listViewChatsRecordList.length,
                itemBuilder: (context, listViewIndex) {
                  final listViewChatsRecord =
                      listViewChatsRecordList[listViewIndex];
                  return Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 10),
                    child: StreamBuilder<FFChatInfo>(
                      stream: FFChatManager.instance
                          .getChatInfo(chatRecord: listViewChatsRecord),
                      builder: (context, snapshot) {
                        final chatInfo =
                            snapshot.data ?? FFChatInfo(listViewChatsRecord);
                        return FFChatPreview(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ChatPageWidget(
                                chatUser: chatInfo.otherUsers.length == 1
                                    ? chatInfo.otherUsersList.first
                                    : null,
                                chatRef: chatInfo.chatRecord.reference,
                              ),
                            ),
                          ),
                          lastChatText: chatInfo.chatPreviewMessage(),
                          lastChatTime: listViewChatsRecord.lastMessageTime,
                          seen: listViewChatsRecord.lastMessageSeenBy
                              .contains(currentUserReference),
                          title: chatInfo.chatPreviewTitle(),
                          userProfilePic: chatInfo.chatPreviewPic(),
                          color: Colors.black,
                          unreadColor: Color(0x68F44336),
                          titleTextStyle: GoogleFonts.getFont(
                            'Lexend Deca',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                          ),
                          dateTextStyle: GoogleFonts.getFont(
                            'Lexend Deca',
                            color: FlutterFlowTheme.of(context).grayIcon,
                            fontWeight: FontWeight.normal,
                            fontSize: 14,
                          ),
                          previewTextStyle: GoogleFonts.getFont(
                            'Lexend Deca',
                            color: FlutterFlowTheme.of(context).grayIcon,
                            fontWeight: FontWeight.normal,
                            fontSize: 14,
                          ),
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(12, 3, 3, 3),
                          borderRadius: BorderRadius.circular(0),
                        );
                      },
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
