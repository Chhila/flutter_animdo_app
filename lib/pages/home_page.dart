import 'package:flutter/material.dart';
import 'package:go_moon/widgets/custom_dropdown_button.dart';

class HomePage extends StatelessWidget {
  // Declare variables for device width and height
  late double _deviceHeight, _deviceWidth;

  // const HomePage({Key? key}) : super(key: key);
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the Width and Height of the current device
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: _deviceWidth,
          height: _deviceHeight,
          // Set padding for Left and Right 5%
          padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.05),
          child: Stack(
            children: [
              Column(
                // Align the children Vertically
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _pageTitle(),
                  _bookRideWidget(),
                ],
              ),
              Align(
                alignment: Alignment.centerRight,
                child: _astroImageWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _pageTitle() {
    return const Text(
      "#GoMoon",
      style: TextStyle(
        color: Colors.white,
        fontSize: 60,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _astroImageWidget() {
    return Container(
      height: _deviceHeight * 0.5,
      width: _deviceWidth * 0.65,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/astro_moon.png"),
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  Widget _destinationDropDownWidget() {
    return CustomDropDownButtonClass(
      values: const [
        "SpaceX Station", // First option
        "NASA Station", // Second option
      ],
      width: _deviceWidth,
    );
  }

  Widget _travellerInformationWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomDropDownButtonClass(
          values: const ["1", "2", "3", "4"],
          // 0.45 is for 45% so the DropDownButton is half
          width: _deviceWidth * 0.425,
        ),
        CustomDropDownButtonClass(
          values: const ["Economy", "Business", "First", "Private"],
          // 0.45 is for 45% so the DropDownButton is half
          width: _deviceWidth * 0.425,
        ),
      ],
    );
  }

  Widget _bookRideWidget() {
    return Container(
      height: _deviceHeight * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _destinationDropDownWidget(),
          _travellerInformationWidget(),
          _rideButton(),
        ],
      ),
    );
  }

  Widget _rideButton() {
    return Container(
      margin: EdgeInsets.only(bottom: _deviceHeight * 0.01),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      width: _deviceWidth,
      child: MaterialButton(
        onPressed: () {},
        child: const Text(
          "Book Ride!",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
