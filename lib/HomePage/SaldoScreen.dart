import 'dart:async';
import 'dart:developer';

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:aqua/index.dart';
import 'package:aqua/recibo_screen/ReciboScreen.dart';
import 'package:aqua/servicios_screen/ServiciosScreen.dart';

import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:aqua/models/service_model.dart';
import 'package:aqua/services/api_service.dart';

class SaldoScreen extends StatefulWidget {
  const SaldoScreen({Key? key}) : super(key: key);

  @override
  _SaldoScreenState createState() => _SaldoScreenState();
}

class _SaldoScreenState extends State<SaldoScreen> {
  TextEditingController? _litersLimit;
  bool status = true;
  double litersLimit = 100;
  double per = 0;

  String? dropDownValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  late ServiceModel? _serviceModel;

  @override
  void initState() {
    _litersLimit = TextEditingController();
    _serviceModel = ServiceModel(id: "", litres: 0.00);
    super.initState();
    _getData();
  }

  @override
  void dispose() {
    _litersLimit?.dispose();
    super.dispose();
  }

  void _getData() async {
    _serviceModel = (await ApiService().getLitres('?id=168432158'));
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: scaffoldKey,
      body: _serviceModel == null
          ? const Center(
        child: CircularProgressIndicator(),
      )
          : SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30,
                                  borderWidth: 1,
                                  buttonSize: 60,
                                  icon: Icon(
                                    Icons.account_balance,
                                    color: Color(0xFF009FFF),
                                    size: 30,
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SaldoScreen()));
                                  },
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                SelectionArea(
                                    child: Text(
                                      'Saldo',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme
                                          .of(context)
                                          .bodyText1
                                          .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF009FFF),
                                      ),
                                    )),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30,
                                  borderWidth: 1,
                                  buttonSize: 60,
                                  icon: Icon(
                                    Icons.fact_check,
                                    color: FlutterFlowTheme
                                        .of(context)
                                        .secondaryText,
                                    size: 30,
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ReciboScreen()));
                                  },
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                SelectionArea(
                                    child: Text(
                                      'Recibos',
                                      style: FlutterFlowTheme
                                          .of(context)
                                          .bodyText1
                                          .override(
                                        fontFamily: 'Poppins',
                                        color:
                                        FlutterFlowTheme
                                            .of(context)
                                            .secondaryText,
                                      ),
                                    )),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30,
                                  borderWidth: 1,
                                  buttonSize: 60,
                                  icon: Icon(
                                    Icons.report,
                                    color: FlutterFlowTheme
                                        .of(context)
                                        .secondaryText,
                                    size: 30,
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ReporteScreen()));
                                  },
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                SelectionArea(
                                    child: Text(
                                      'Reportes',
                                      style: FlutterFlowTheme
                                          .of(context)
                                          .bodyText1
                                          .override(
                                        fontFamily: 'Poppins',
                                        color:
                                        FlutterFlowTheme
                                            .of(context)
                                            .secondaryText,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    )),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30,
                                  borderWidth: 1,
                                  buttonSize: 60,
                                  icon: Icon(
                                    Icons.fact_check,
                                    color: FlutterFlowTheme
                                        .of(context)
                                        .secondaryText,
                                    size: 30,
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ServiciosScreen()));
                                  },
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                SelectionArea(
                                    child: Text(
                                      'Servicios',
                                      style: FlutterFlowTheme
                                          .of(context)
                                          .bodyText1
                                          .override(
                                        fontFamily: 'Poppins',
                                        color:
                                        FlutterFlowTheme
                                            .of(context)
                                            .secondaryText,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  height: 10,
                  thickness: 1,
                  indent: 50,
                  endIndent: 50,
                  color: FlutterFlowTheme
                      .of(context)
                      .lineColor,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SelectionArea(
                            child: Text(
                              'ID Servicio:',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme
                                  .of(context)
                                  .bodyText1,
                            )),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        FlutterFlowDropDown(
                          initialOption: dropDownValue ??= '168432158',
                          //options: readServices(),
                          onChanged: (val) =>
                              setState(() => dropDownValue = val),
                          width: 140,
                          height: 50,
                          textStyle: FlutterFlowTheme
                              .of(context)
                              .bodyText1
                              .override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme
                                .of(context)
                                .secondaryText,
                          ),
                          hintText: '168432158',
                          fillColor: Colors.white,
                          elevation: 2,
                          borderColor: Colors.transparent,
                          borderWidth: 0,
                          borderRadius: 0,
                          margin: EdgeInsetsDirectional.fromSTEB(
                              12, 4, 12, 4),
                          hidesUnderline: true,
                          options: ["168432158"],
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(
                  height: 10,
                  thickness: 1,
                  indent: 50,
                  endIndent: 50,
                  color: FlutterFlowTheme
                      .of(context)
                      .lineColor,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0, 0, 15, 0),
                            child: SelectionArea(
                                child: Text(
                                  'Saldo actual:',
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme
                                      .of(context)
                                      .bodyText1
                                      .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 16,
                                  ),
                                )),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          SelectionArea(
                              child: Text(
                                (status == true) ? 'Vencido' : 'Pagado',
                                textAlign: TextAlign.end,
                                style: FlutterFlowTheme
                                    .of(context)
                                    .bodyText1
                                    .override(
                                  fontFamily: 'Poppins',
                                  color: (status == true) ? FlutterFlowTheme
                                      .of(context)
                                      .alternate : Colors.green,
                                  fontSize: 16,
                                ),
                              )),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon((status == true) ? Icons.warning : Icons
                              .check_circle_sharp,
                            color: (status == true) ? FlutterFlowTheme
                                .of(context)
                                .alternate : Colors.green,
                            size: 24,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          SelectionArea(
                              child: Text(_serviceModel!.litres.toStringAsFixed(2) + ' Lt',
                                style: FlutterFlowTheme
                                    .of(context)
                                    .bodyText1
                                    .override(
                                  fontFamily: 'Poppins',
                                  fontSize: 25,
                                ),
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                      EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                      child: SelectionArea(
                          child: Text(
                            'Fecha límite de pago:',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme
                                .of(context)
                                .bodyText1
                                .override(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                            ),
                          )),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SelectionArea(
                          child: Text(
                            '24 DE OCTUBRE DE 2022',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme
                                .of(context)
                                .bodyText1
                                .override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme
                                  .of(context)
                                  .secondaryText,
                            ),
                          )),
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                      EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                      child: SelectionArea(
                          child: Text(
                            'Período facturado:',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme
                                .of(context)
                                .bodyText1
                                .override(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                            ),
                          )),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SelectionArea(
                          child: Text(
                            '11 AGO 22 - 11 OCT 22',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme
                                .of(context)
                                .bodyText1
                                .override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme
                                  .of(context)
                                  .secondaryText,
                            ),
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0, 0, 15, 0),
                            child: SelectionArea(
                                child: Text(
                                  'Lectura:',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme
                                      .of(context)
                                      .bodyText1
                                      .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 14,
                                  ),
                                )),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          SelectionArea(
                              child: Text(
                                '99972',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme
                                    .of(context)
                                    .bodyText1
                                    .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme
                                      .of(context)
                                      .secondaryText,
                                ),
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0, 0, 15, 0),
                            child: SelectionArea(
                                child: Text(
                                  'Tipo de tarifa:',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme
                                      .of(context)
                                      .bodyText1
                                      .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 14,
                                  ),
                                )),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          SelectionArea(
                              child: Text(
                                'CASA HABITACIÓN\nAGUA POTABLE',
                                textAlign: TextAlign.start,
                                maxLines: 2,
                                style: FlutterFlowTheme
                                    .of(context)
                                    .bodyText1
                                    .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme
                                      .of(context)
                                      .secondaryText,
                                ),
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 400,
                  height: 15,
                  decoration: BoxDecoration(
                    color:
                    FlutterFlowTheme
                        .of(context)
                        .secondaryBackground,
                  ),
                ),
                Divider(
                  height: 10,
                  thickness: 1,
                  indent: 50,
                  endIndent: 50,
                  color: FlutterFlowTheme
                      .of(context)
                      .lineColor,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          CircularPercentIndicator(
                            percent: definePercent(),
                            radius: 60,
                            lineWidth: 24,
                            animation: true,
                            progressColor: setColor(),
                            backgroundColor: Color(0xFFF1F4F8),
                            center: Text( centerText(),
                              style: FlutterFlowTheme
                                  .of(context)
                                  .bodyText1
                                  .override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme
                                    .of(context)
                                    .secondaryText,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0, 0, 0, 20),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      40, 0, 0, 0),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      setState(() {
                                        status = !status;
                                      });
                                    },
                                    text: 'Pagar',
                                    icon: Icon(
                                      Icons.payment,
                                      size: 15,
                                    ),
                                    options: FFButtonOptions(
                                      width: 150,
                                      height: 40,
                                      color: (status == true) ? Color(
                                          0xFF009FFF) : Color(0x57636C),
                                      textStyle:
                                      FlutterFlowTheme
                                          .of(context)
                                          .subtitle2
                                          .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                      ),
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius:
                                      BorderRadius.circular(8),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    40, 0, 0, 0),
                                child: FFButtonWidget(
                                  onPressed: () async {

                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                            title: Text(
                                              'Litros mensuales',
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme
                                                  .of(context)
                                                  .bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 18,
                                              ),
                                            ),
                                            content: TextField(
                                              onChanged:(value){
                                                litersLimit = value as double;
                                                setState(() {
                                                  litersLimit;
                                                });
                                              },
                                              controller: _litersLimit,
                                              autofocus: true,
                                              decoration: InputDecoration(hintText: "litros"),
                                            ),
                                            actions: [
                                              TextButton(onPressed: () {
                                                Navigator.of(context).pop(_litersLimit?.text);
                                                setState(() {
                                                  _litersLimit;
                                                });
                                              }, child: Text(
                                                'OK',style: FlutterFlowTheme
                                                  .of(context)
                                                  .bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 16,
                                              ),)),
                                            ],
                                          );

                                        });
                                  },
                                  text: 'Simulador',
                                  icon: Icon(
                                    Icons.water_damage,
                                    size: 15,
                                  ),
                                  options: FFButtonOptions(
                                    width: 150,
                                    height: 40,
                                    color: Color(0xFF009FFF),
                                    textStyle:
                                    FlutterFlowTheme
                                        .of(context)
                                        .subtitle2
                                        .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                    ),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius:
                                    BorderRadius.circular(8),
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
                Container(
                  width: double.infinity,
                  height: 15,
                  decoration: BoxDecoration(
                    color:
                    FlutterFlowTheme
                        .of(context)
                        .secondaryBackground,
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.white, Color(0x73009FFF)],
                        stops: [0, 1],
                        begin: AlignmentDirectional(0, -1),
                        end: AlignmentDirectional(0, 1),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Color setColor() {
    per = toPercent();
    if (per <= .25) {
      return Colors.green;
    } else if (per > .25 && per <= .50) {
      return Colors.yellow;
    } else if (per > .50 && per <= .75) {
      return Colors.deepOrangeAccent;
    } else {
      return Colors.red;
    }
  }

  double toPercent() {
    // textController.text is a string and we have to convert it to double
    final double ? liters = double.tryParse(_litersLimit?.text ?? "0") ;

    final double ? mult = (_serviceModel?.litres ?? 0)*100;

    setState(() {
      litersLimit = liters != null ? liters : 0;
    });

    return (mult!/litersLimit)/100;
  }

  double definePercent(){
    per = toPercent();
    if(per < 0) return 0;
    else if (per > 1) return 1;
    else return per;
  }

  String centerText (){
    if ( (toPercent()*100).toStringAsFixed(2) == "Infinity" ) return "" ;
    else return (toPercent()*100).toStringAsFixed(2)+ "%";
  }

}
