import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wusla_food/controller/navigator/router_class.dart';
import 'package:wusla_food/view/component/button.dart';
import 'package:wusla_food/view/screen/navigate_screen/naviagateion_main.dart';

class GoogleMapsScreen extends StatefulWidget {
  @override
  State<GoogleMapsScreen> createState() => _GoogleMapsScreenState();
}

class _GoogleMapsScreenState extends State<GoogleMapsScreen> {
  GoogleMapController? controller;

  Set<Marker> markers = {};
  LatLng? myLocation;
  getUserLocation() async {
    LocationPermission permission;
    permission = await Geolocator.requestPermission();
    Position position = await Geolocator.getCurrentPosition();
    this.myLocation = LatLng(position.latitude, position.longitude);
    controller!.animateCamera(CameraUpdate.newLatLngZoom(
        LatLng(position.latitude, position.longitude), 20));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            getUserLocation();
          },
          child: Icon(Icons.gps_fixed),
        ),
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Google Maps'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            GoogleMap(
              myLocationButtonEnabled: true,
              zoomControlsEnabled: false,
              onTap: (LatLng point) {
                print(point.latitude);
                print(point.longitude);
                markers
                    .add(Marker(markerId: MarkerId('gaza'), position: point));
                setState(() {});
              },
              markers: markers,
              onMapCreated: (GoogleMapController controller) {
                this.controller = controller;
              },
              initialCameraPosition: CameraPosition(
                target: LatLng(31.416665, 34.333332),
                zoom: 11.5,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: PrimaryButton(
                color: Color(0xFF22A45D),
                textcolor: Colors.white,
                label: 'وصل هنا',
                widt: 343.w,
                hieg: 50.h,
                onTap: () {
                  if (myLocation != null) {
                    RouterClass.routerClass
                        .pushWidgetReplacement(NavigationMain());
                  } else {
                    return ScaffoldMessenger.of(context)
                        .showSnackBar(const SnackBar(
                      content: Text('يجب تحديد موقعك '),
                      backgroundColor: Colors.red,
                    ));
                  }
                },
              ),
            ),
          ],
        ));
  }
}
