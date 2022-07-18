import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class GiftburgerSuccessWidget extends StatefulWidget {
  const GiftburgerSuccessWidget({
    Key key,
    this.sender,
    this.reciever,
  }) : super(key: key);

  final DocumentReference sender;
  final String reciever;

  @override
  _GiftburgerSuccessWidgetState createState() =>
      _GiftburgerSuccessWidgetState();
}

class _GiftburgerSuccessWidgetState extends State<GiftburgerSuccessWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 500,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryColor,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    AuthUserStreamWidget(
                      child: Text(
                        currentUserDisplayName,
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Lexend Deca',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 35,
                            ),
                      ),
                    ),
                    Text(
                      'Sent A ',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Lexend Deca',
                            fontSize: 35,
                          ),
                    ),
                    Lottie.network(
                      'https://assets2.lottiefiles.com/private_files/lf30_axdai8zf.json',
                      width: 300,
                      height: 300,
                      fit: BoxFit.cover,
                      animate: true,
                    ),
                    Text(
                      'to',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Lexend Deca',
                            fontSize: 35,
                          ),
                    ),
                    Text(
                      widget.reciever,
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Lexend Deca',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 35,
                          ),
                    ),
                  ],
                ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NavBarPage(initialPage: 'AllChats'),
                    ),
                  );

                  final usersUpdateData = {
                    'Xp': FieldValue.increment(-(1000)),
                  };
                  await currentUserReference.update(usersUpdateData);
                },
                text: 'Done',
                options: FFButtonOptions(
                  width: 250,
                  height: 60,
                  color: FlutterFlowTheme.of(context).btnText,
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Lexend Deca',
                        color: FlutterFlowTheme.of(context).tertiaryColor,
                      ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
