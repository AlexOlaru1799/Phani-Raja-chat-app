import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/create_modal_widget.dart';
import '../components/more_optionspost_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_media_display.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_video_player.dart';
import '../post_details/post_details_widget.dart';
import '../story_details/story_details_widget.dart';
import '../view_profile_page_other/view_profile_page_other_widget.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:text_search/text_search.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget>
    with TickerProviderStateMixin {
  List<UserPostsRecord> simpleSearchResults = [];
  TextEditingController textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final animationsMap = {
    'iconOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      duration: 600,
      hideBeforeAnimating: false,
      initialState: AnimationState(
        scale: 1.2,
        opacity: 0,
      ),
      finalState: AnimationState(
        scale: 1,
        opacity: 1,
      ),
    ),
  };

  @override
  void initState() {
    super.initState();
    setupTriggerAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onActionTrigger),
      this,
    );

    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
          child: Image.asset(
            'assets/images/1-removebg-preview.png',
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          'Social.',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Lexend Deca',
                color: Colors.white,
                fontSize: 32,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return Padding(
                padding: MediaQuery.of(context).viewInsets,
                child: Container(
                  height: 240,
                  child: CreateModalWidget(),
                ),
              );
            },
          );
        },
        backgroundColor: Color(0xFFBF5AF2),
        elevation: 8,
        child: Icon(
          Icons.post_add,
          color: Colors.white,
          size: 24,
        ),
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 250,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryColor,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: Color(0x3A000000),
                    )
                  ],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
                  ),
                  shape: BoxShape.rectangle,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.8,
                              height: 40,
                              decoration: BoxDecoration(
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                                child: TextFormField(
                                  controller: textController,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    'textController',
                                    Duration(milliseconds: 2000),
                                    () => setState(() {}),
                                  ),
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: ' search..',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Lexend Deca',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF202430),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF202430),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    filled: true,
                                    fillColor: Color(0xFF202430),
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            15, 0, 0, 0),
                                    suffixIcon: textController.text.isNotEmpty
                                        ? InkWell(
                                            onTap: () => setState(
                                              () => textController?.clear(),
                                            ),
                                            child: Icon(
                                              Icons.clear,
                                              color: Color(0xFF757575),
                                              size: 22,
                                            ),
                                          )
                                        : null,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 15,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                            ),
                            FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30,
                              borderWidth: 1,
                              buttonSize: 60,
                              icon: Icon(
                                Icons.search,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 22,
                              ),
                              onPressed: () async {
                                await queryUserPostsRecordOnce()
                                    .then(
                                      (records) => simpleSearchResults =
                                          TextSearch(
                                        records
                                            .map(
                                              (record) => TextSearchItem(
                                                  record, [
                                                record.postTitle,
                                                record.postDescription
                                              ]),
                                            )
                                            .toList(),
                                      )
                                              .search(textController.text)
                                              .map((r) => r.object)
                                              .toList(),
                                    )
                                    .onError(
                                        (_, __) => simpleSearchResults = [])
                                    .whenComplete(() => setState(() {}));
                              },
                            ),
                          ],
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.8, -0.6),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 10, 0, 20),
                            child: Text(
                              'What\'s New?',
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Montserrat',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 32,
                                  ),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Divider(
                                  height: 0,
                                  thickness: 0,
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                ),
                                Container(
                                  height: 110,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 8),
                                    child:
                                        StreamBuilder<List<UserStoriesRecord>>(
                                      stream: queryUserStoriesRecord(
                                        queryBuilder: (userStoriesRecord) =>
                                            userStoriesRecord
                                                .orderBy('storyPostedAt'),
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50,
                                              height: 50,
                                              child: CircularProgressIndicator(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                              ),
                                            ),
                                          );
                                        }
                                        List<UserStoriesRecord>
                                            listViewUserStoriesRecordList =
                                            snapshot.data;
                                        if (listViewUserStoriesRecordList
                                            .isEmpty) {
                                          return Center(
                                            child: Image.asset(
                                              'assets/images/df3hg_',
                                              width: 60,
                                            ),
                                          );
                                        }
                                        return ListView.builder(
                                          padding: EdgeInsets.zero,
                                          scrollDirection: Axis.horizontal,
                                          itemCount:
                                              listViewUserStoriesRecordList
                                                  .length,
                                          itemBuilder:
                                              (context, listViewIndex) {
                                            final listViewUserStoriesRecord =
                                                listViewUserStoriesRecordList[
                                                    listViewIndex];
                                            return Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(8, 0, 8, 0),
                                              child: StreamBuilder<UsersRecord>(
                                                stream: UsersRecord.getDocument(
                                                    listViewUserStoriesRecord
                                                        .user),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 50,
                                                        height: 50,
                                                        child:
                                                            CircularProgressIndicator(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryColor,
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  final columnUsersRecord =
                                                      snapshot.data;
                                                  return InkWell(
                                                    onTap: () async {
                                                      await Navigator.push(
                                                        context,
                                                        PageTransition(
                                                          type:
                                                              PageTransitionType
                                                                  .bottomToTop,
                                                          duration: Duration(
                                                              milliseconds:
                                                                  200),
                                                          reverseDuration:
                                                              Duration(
                                                                  milliseconds:
                                                                      200),
                                                          child:
                                                              StoryDetailsWidget(
                                                            initialStoryIndex:
                                                                listViewIndex,
                                                            userstories:
                                                                listViewUserStoriesRecord
                                                                    .reference,
                                                            user:
                                                                listViewUserStoriesRecord
                                                                    .reference,
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Container(
                                                          width: 70,
                                                          height: 70,
                                                          decoration:
                                                              BoxDecoration(
                                                            gradient:
                                                                LinearGradient(
                                                              colors: [
                                                                Color(
                                                                    0x68F44336),
                                                                Color(
                                                                    0x88FF7400)
                                                              ],
                                                              stops: [0, 1],
                                                              begin:
                                                                  AlignmentDirectional(
                                                                      0.07, -1),
                                                              end:
                                                                  AlignmentDirectional(
                                                                      -0.07, 1),
                                                            ),
                                                            shape:
                                                                BoxShape.circle,
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        2,
                                                                        2,
                                                                        2,
                                                                        2),
                                                            child: Container(
                                                              width: 30,
                                                              height: 30,
                                                              clipBehavior: Clip
                                                                  .antiAlias,
                                                              decoration:
                                                                  BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                              ),
                                                              child:
                                                                  Image.network(
                                                                columnUsersRecord
                                                                    .photoUrl,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      10, 0, 0),
                                                          child: Text(
                                                            columnUsersRecord
                                                                .displayName
                                                                .maybeHandleOverflow(
                                                              maxChars: 7,
                                                              replacement: '…',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend Deca',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontSize: 12,
                                                                ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
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
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 32),
                child: StreamBuilder<List<UserPostsRecord>>(
                  stream: queryUserPostsRecord(
                    queryBuilder: (userPostsRecord) =>
                        userPostsRecord.orderBy('timePosted', descending: true),
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
                    List<UserPostsRecord> socialFeedUserPostsRecordList =
                        snapshot.data;
                    if (socialFeedUserPostsRecordList.isEmpty) {
                      return Center(
                        child: Image.asset(
                          'assets/images/emptyPosts@2x.png',
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: 400,
                        ),
                      );
                    }
                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      children:
                          List.generate(socialFeedUserPostsRecordList.length,
                              (socialFeedIndex) {
                        final socialFeedUserPostsRecord =
                            socialFeedUserPostsRecordList[socialFeedIndex];
                        return Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                          child: StreamBuilder<UsersRecord>(
                            stream: UsersRecord.getDocument(
                                socialFeedUserPostsRecord.postUser),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: CircularProgressIndicator(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                    ),
                                  ),
                                );
                              }
                              final userPostUsersRecord = snapshot.data;
                              return Container(
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 7,
                                      color: Color(0x32000000),
                                      spreadRadius: 10,
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: InkWell(
                                  onTap: () async {
                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => PostDetailsWidget(
                                          userRecord: userPostUsersRecord,
                                          postReference:
                                              socialFeedUserPostsRecord
                                                  .reference,
                                        ),
                                      ),
                                    );
                                  },
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 8, 2, 4),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            InkWell(
                                              onTap: () async {
                                                await Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        ViewProfilePageOtherWidget(
                                                      userDetails:
                                                          userPostUsersRecord,
                                                    ),
                                                  ),
                                                );
                                              },
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                8, 0, 0, 0),
                                                    child: Card(
                                                      clipBehavior: Clip
                                                          .antiAliasWithSaveLayer,
                                                      color: Color(0xFF4B39EF),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    1, 1, 1, 1),
                                                        child: Container(
                                                          width: 40,
                                                          height: 40,
                                                          clipBehavior:
                                                              Clip.antiAlias,
                                                          decoration:
                                                              BoxDecoration(
                                                            shape:
                                                                BoxShape.circle,
                                                          ),
                                                          child:
                                                              CachedNetworkImage(
                                                            imageUrl:
                                                                valueOrDefault<
                                                                    String>(
                                                              userPostUsersRecord
                                                                  .photoUrl,
                                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/sample-app-social-app-tx2kqp/assets/wn636nykq7im/lucrezia-carnelos-0liYTl4dJxk-unsplash.jpg',
                                                            ),
                                                            fit: BoxFit.fill,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        userPostUsersRecord
                                                            .displayName,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend Deca',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontSize: 17,
                                                                ),
                                                      ),
                                                      Text(
                                                        dateTimeFormat(
                                                            'relative',
                                                            socialFeedUserPostsRecord
                                                                .timePosted),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend Deca',
                                                                  fontSize: 11,
                                                                ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            FlutterFlowIconButton(
                                              borderColor: Colors.transparent,
                                              borderRadius: 30,
                                              buttonSize: 46,
                                              icon: Icon(
                                                Icons.keyboard_control,
                                                color: Color(0x4DFFFFFF),
                                                size: 20,
                                              ),
                                              onPressed: () async {
                                                await showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  context: context,
                                                  builder: (context) {
                                                    return Padding(
                                                      padding:
                                                          MediaQuery.of(context)
                                                              .viewInsets,
                                                      child: Container(
                                                        height: 240,
                                                        child:
                                                            MoreOptionspostWidget(),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            15, 15, 15, 15),
                                        child: Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                          ),
                                          child: Text(
                                            socialFeedUserPostsRecord
                                                .postDescription,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                ),
                                          ),
                                        ),
                                      ),
                                      if ((socialFeedUserPostsRecord
                                                  .postPhoto !=
                                              null &&
                                          socialFeedUserPostsRecord.postPhoto !=
                                              ''))
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 0, 10, 0),
                                          child: FlutterFlowMediaDisplay(
                                            path: socialFeedUserPostsRecord
                                                .postPhoto,
                                            imageBuilder: (path) => ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              child: CachedNetworkImage(
                                                imageUrl: path,
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                height: 300,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            videoPlayerBuilder: (path) =>
                                                FlutterFlowVideoPlayer(
                                              path: path,
                                              width: 300,
                                              autoPlay: false,
                                              looping: true,
                                              showControls: true,
                                              allowFullScreen: true,
                                              allowPlaybackSpeedMenu: false,
                                            ),
                                          ),
                                        ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8, 4, 8, 10),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 16, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        width: 41,
                                                        height: 41,
                                                        child: Stack(
                                                          children: [
                                                            if (!(socialFeedUserPostsRecord
                                                                    .likes
                                                                    .toList()
                                                                    .contains(
                                                                        currentUserReference)) ??
                                                                true)
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0,
                                                                        0.25),
                                                                child: InkWell(
                                                                  onTap:
                                                                      () async {
                                                                    final userPostsUpdateData =
                                                                        {
                                                                      'likes':
                                                                          FieldValue
                                                                              .arrayUnion([
                                                                        currentUserReference
                                                                      ]),
                                                                    };
                                                                    await socialFeedUserPostsRecord
                                                                        .reference
                                                                        .update(
                                                                            userPostsUpdateData);
                                                                    await (animationsMap['iconOnActionTriggerAnimation'].curvedAnimation.parent
                                                                            as AnimationController)
                                                                        .forward(
                                                                            from:
                                                                                0.0);
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .favorite_border,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    size: 25,
                                                                  ),
                                                                ),
                                                              ),
                                                            if (socialFeedUserPostsRecord
                                                                    .likes
                                                                    .toList()
                                                                    ?.contains(
                                                                        currentUserReference) ??
                                                                true)
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0,
                                                                        0.25),
                                                                child: InkWell(
                                                                  onTap:
                                                                      () async {
                                                                    final userPostsUpdateData =
                                                                        {
                                                                      'likes':
                                                                          FieldValue
                                                                              .arrayRemove([
                                                                        currentUserReference
                                                                      ]),
                                                                    };
                                                                    await socialFeedUserPostsRecord
                                                                        .reference
                                                                        .update(
                                                                            userPostsUpdateData);
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .favorite,
                                                                    color: Color(
                                                                        0xFFE90707),
                                                                    size: 25,
                                                                  ),
                                                                ).animated([
                                                                  animationsMap[
                                                                      'iconOnActionTriggerAnimation']
                                                                ]),
                                                              ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    4, 0, 0, 0),
                                                        child: Text(
                                                          valueOrDefault<
                                                              String>(
                                                            functions
                                                                .likes(
                                                                    socialFeedUserPostsRecord)
                                                                .toString(),
                                                            '0',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText2
                                                              .override(
                                                                fontFamily:
                                                                    'Lexend Deca',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Icon(
                                                      Icons
                                                          .mode_comment_outlined,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 24,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  4, 0, 0, 0),
                                                      child: Text(
                                                        socialFeedUserPostsRecord
                                                            .numComments
                                                            .toString(),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText2
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend Deca',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        );
                      }),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
