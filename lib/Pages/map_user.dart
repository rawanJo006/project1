import 'dart:async';
import 'package:label_marker/label_marker.dart';

import 'package:custom_info_window/custom_info_window.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'dart:ui' as ui;

import 'package:flutter/services.dart';
final double PIN_VIS=20;
final double PIN_INVIS=-220;

class Map_user extends StatefulWidget {
  const Map_user({super.key});

  @override
  State<Map_user> createState() => _Map_userState();
}

class _Map_userState extends State<Map_user> {
  Position? cl;
  var lat;
  var long;
  var isMapCreated ;
  CameraPosition? _kGooglePlex;
  late Set<Marker> mymarker;
  late BitmapDescriptor mapMarker;
  late final Uint8List markerIcon;

  double pinPillPosition= PIN_INVIS;


  ui.Image? image;
  bool isImageloaded = false;
  CustomInfoWindowController customInfoWindowController = CustomInfoWindowController();



  Future getPer() async{
    bool services;
    LocationPermission per;
    services= await Geolocator.isLocationServiceEnabled();


    // print('test $services');
    if(services != true){
      // AwesomeDialog(
      //     context: context ,
      //     dialogType: DialogType.info,
      //     title: "Services" ,
      //     body: Text('Services not enables'))..show();
    }

    per= await Geolocator.checkPermission();

    if(per == LocationPermission.denied){
      per= await Geolocator.requestPermission();

      if(per != LocationPermission.denied){
        getData();
      }
    }
    // print('------------------');
    // print('per $per' );
    // print('------------------');
    return per;
  }



  Future<void> getData() async{
    cl= await Geolocator.getCurrentPosition().then((value) => value);
    lat=21.566625;
    long= 39.202753;

    // lat=cl?.latitude;
    // long=cl?.longitude;
    _kGooglePlex = CameraPosition(
     target: LatLng(lat, long),
      // target: LatLng(21.422390, 39.722958),
        zoom: 15,
    );
    print('here marker');
    print(cl);
    setState(() {


      mymarker= {
        Marker(
            markerId: MarkerId("5"),
            position:   LatLng(lat, long),
          draggable: true,
          infoWindow: InfoWindow(
            // title:"55555",
          ),onTap: (){
              print('clicked rawan');
              setState(() {
                this.pinPillPosition = PIN_VIS;
              });
           }
          ,
          onDragEnd: (value) async{
            var xy= await gmc?.getLatLng(ScreenCoordinate(x:200 , y:200));
            print('test here');
            print(xy);
          },
        ),
        Marker(
          markerId: MarkerId("54"),
          // icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
          position:  LatLng(21.56432588713682 , 39.20391491917099),
          draggable: true,
          // infoWindow: InfoWindow(
          //     title:"3100",
          //     snippet: 'click here'
          // ),
          onDragEnd: (value) async{
            var xy= await gmc?.getLatLng(ScreenCoordinate(x:220 , y:200));
            print(xy);
          },
        ),
        // Marker(
        //   markerId: MarkerId("dd54"),
        //   // icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
        //   position:   LatLng(21.5635577 ,39.2048046),
        //   draggable: true,
        //   // infoWindow: InfoWindow(
        //   //     title:"3100",
        //   //     snippet: 'click here'
        //   // ),
        //   onDragEnd: (value) async{
        //     var xy= await gmc?.getLatLng(ScreenCoordinate(x:220 , y:200));
        //     print(xy);
        //   },
        // )
      };
      mymarker.addLabelMarker(LabelMarker(
        // icon : BitmapDescriptor.defaultMarker,
        anchor :const Offset(0.5, 2),
        label: "122\n eerwer",
        markerId: MarkerId("233"),
        position:  LatLng(21.56432588713682 , 39.20391491917099),
        backgroundColor:Color.fromRGBO(38, 38, 38, 0.6)
        ,
      ),).then((value) {
        setState(() {});
      },
      );

      mymarker.addLabelMarker(LabelMarker(
        // icon : BitmapDescriptor.defaultMarker,
        anchor :const Offset(0.5, 2),
        // icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
          label: "100\n Rawan home",
        markerId: MarkerId("1"),
        position: LatLng(lat, long),
          onTap: (){
            setState(() {
              this.pinPillPosition = PIN_VIS;
            });
           print('cliend label rawan');
          },
          backgroundColor:Color.fromRGBO(38, 38, 38, 0.6)
      )).then((value) {
        
      },
      );



      mymarker.addLabelMarker(LabelMarker(
        // icon : BitmapDescriptor.defaultMarker,
        anchor :const Offset(0.5, 1.7),
        label: "122\n Saco",
        markerId: MarkerId("2"),
        position:  LatLng(21.5635577 ,39.2048046),
        backgroundColor:Color.fromRGBO(38, 38, 38, 0.6)
        ,
      ),).then((value) {
        setState(() {});
      },
      );

      mymarker.addLabelMarker(LabelMarker(
        // icon : BitmapDescriptor.defaultMarker,
        anchor :const Offset(0.5, 1.7),
        label: "2000\n Albaik",
        markerId: MarkerId("eee2"),
        position:  LatLng(21.5635577 ,39.2048046),
        backgroundColor:Color.fromRGBO(38, 38, 38, 0.6)
        ,
      ),).then((value) {
        setState(() {});
      },
      );

      mymarker.addLabelMarker(LabelMarker(
        // icon : BitmapDescriptor.defaultMarker,
        anchor :const Offset(0.5, 1.7),
        label: "122\n Saco",
        markerId: MarkerId("26"),
        position:  LatLng( 21.5619879 ,39.20258219999999),
        backgroundColor:Color.fromRGBO(38, 38, 38, 0.6)
        ,
      ),).then((value) {
        setState(() {});
      },
      );

    });


    // mymarker.add(
    //   Marker(
    //     markerId: const MarkerId("3"),
    //     position: const LatLng(21.565362 ,39.210682),
    //     onTap: (){
    //       customInfoWindowController.addInfoWindow!(
    //           Text('fdfdfg'),
    //           LatLng(21.565362 ,39.210682)
    //       );
    //     },
    //     infoWindow: InfoWindow(
    //
    //       title:"233",
    //       // snippet: 'click here'
    //     ),
    //
    //   ),
    // );
  }



  void initState(){
    getPer();
    getData();
    // print('ere');
  }
  changeMapMode(){
    getJsonFile('assets/files/them2.json').then(setMapStyle);
    // print('here changeMapMode');
  }

  Future<String> getJsonFile(String path) async{
    return await rootBundle.loadString(path);
  }
  void setMapStyle(String mapstyle){
    gmc?.setMapStyle(mapstyle);

  }
  final Completer<GoogleMapController> _controller = Completer<GoogleMapController>();
  GoogleMapController? gmc ;
  // Set<Marker> mymarker= {
  //   Marker(markerId: MarkerId("1"), position: LatLng(21.5689497, 39.2027922))
  // };
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
          _kGooglePlex == null ? CircularProgressIndicator() :
          Positioned.fill(
            child: Container(
              height: double.maxFinite,
              child: GoogleMap(
                mapType: MapType.normal,
                initialCameraPosition: _kGooglePlex!,
                onTap: (LatLng loc){
                  setState(() {
                    this.pinPillPosition = PIN_INVIS;
                  });

                },
                markers: mymarker,
                onMapCreated: (GoogleMapController controller) {
                  // controller.showMarkerInfoWindow(MarkerId("1"));
                  // controller.showMarkerInfoWindow(MarkerId("2"));
                  changeMapMode();
                  // customInfoWindowController.googleMapController = controller;
                  gmc = controller;
                  // _controller.complete(controller);
                },

              ),
              ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 700),
            curve: Curves.easeInOut,
            bottom: this.pinPillPosition,
              right:0,
              left:0,
              child:GestureDetector(
                onTap: (){
                  print('onTap');
                },
                onLongPress: (){
                  print('onLongPress');
                },
                child: Container(
                  margin: const EdgeInsets.only(left:20, right:20),
                  padding: const EdgeInsets.only( right:10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.elliptical(5, 5)),
                    color: Colors.grey[50],
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0, 2),
                        blurRadius: 4,
                        spreadRadius: 0.1,
                      ),
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(
                        height: 80,
                          fit: BoxFit.fill,
                          width: 80,
                          image: AssetImage('assets/images/mountain.jpeg' )
                      ),
                      // SizedBox(width:2),
                      Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Row(
                          //   children: [
                          //     SizedBox(width:20,),
                          //     Text('Red Sea Mall'),
                          //   ],
                          // ),
                          Text('Red Sea Mall'),
                          SizedBox(height:10),
                          Text('Amir naif streat'),

                          // Row(
                          //   children: [
                          //     Icon(
                          //         Icons.location_on,
                          //       size:15 ,
                          //     ),
                          //     SizedBox(width:5,),
                          //     Text('Amir naif streat'),
                          //   ],
                          // ),

                        ],
                      ),
                      SizedBox(width:20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ImageIcon(
                            AssetImage("assets/images/distance.png"),
                            color: Colors.blue,
                            size: 20,
                          ),
                          SizedBox(height:10),
                          Text('12 KM'),
                        ],
                      ),
                      SizedBox(width:2),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.thumb_up_alt_outlined,
                            size:20 ,
                            color: Colors.blue,
                          ),
                          SizedBox(height:10),
                          Text('200'),
                        ],
                      ),
                      SizedBox(width:2),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.message_outlined,
                            size:20 ,
                            color: Colors.blue,
                          ),
                          SizedBox(height:10),
                          Text('100'),
                        ],
                      ),
                    ],
                  ),

                ),
              )
          )


          // CustomInfoWindow(
          //   controller: customInfoWindowController,
          //   height:200,
          //   width:200,
          //   offset:35
          // )

        ],
      ),
    );
  }
}
