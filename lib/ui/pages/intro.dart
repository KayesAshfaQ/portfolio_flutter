import 'package:flutter/material.dart';

import '../../constants/assets.dart';
import '../../constants/strings.dart';
import '../../constants/text_styles.dart';
import '../../utils/screen/screen_utils.dart';
import '../../widgets/circle_widget.dart';
import '../../widgets/responsive_widget.dart';

class IntroWidget extends StatefulWidget {
  const IntroWidget({super.key});

  @override
  _IntroWidgetState createState() => _IntroWidgetState();
}

class _IntroWidgetState extends State<IntroWidget> {
  @override
  Widget build(BuildContext context) {
    return _buildBody(context);
  }

  Widget _buildBody(BuildContext context) {
    if (ResponsiveWidget.isLargeScreen(context)) {
      return _buildLargeScreenContent(context);
    } else if (ResponsiveWidget.isMediumScreen(context)) {
      return _buildMediumScreenContent(context);
    } else if (ResponsiveWidget.isSmallScreen(context)) {
      return _buildSmallScreenContent(context);
    } else {
      return const SizedBox();
    }
  }

  Widget _buildLargeScreenContent(BuildContext context) {
    return Stack(
      children: <Widget>[
        ResponsiveWidget.isLargeScreen(context) ? _buildDesign() : const SizedBox.shrink(),
        _buildHeader(context),
        Positioned(
          right: MediaQuery.of(context).size.width * 0.16,
          top: MediaQuery.of(context).size.width * 0.10,
          child: const CircleWidget(
            width: 60,
            height: 60,
            outerRadius: 25.0,
            innerRadius: 8.0,
            circleColor: Color(0xFF0098a6),
          ),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width * 0.29,
          top: MediaQuery.of(context).size.width * 0.15,
          child: const CircleWidget(
            width: 40,
            height: 40,
            outerRadius: 15.0,
            innerRadius: 4.0,
            circleColor: Color(0xFF00bcd5),
          ),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width * 0.37,
          bottom: MediaQuery.of(context).size.width * 0.10,
          child: const CircleWidget(
            width: 50,
            height: 50,
            outerRadius: 20.0,
            innerRadius: 4.0,
            circleColor: Color(0xFFb2ebf2),
          ),
        ),
        Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 120.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    const SizedBox(width: 30.0),
                    const CircleWidget(
                      width: 60,
                      height: 60,
                      outerRadius: 25.0,
                      innerRadius: 8.0,
                      circleColor: Color(0xFF0098a6),
                    ),
                    const SizedBox(width: 40.0),
                    _buildAboutMe(fontSize: MediaQuery.of(context).size.width * 0.015),
                  ],
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.30),
              Padding(
                padding: const EdgeInsets.only(bottom: 50.0),
                child: _buildHello(fontSize: MediaQuery.of(context).size.width * 0.12),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildMediumScreenContent(BuildContext context) {
    return Stack(
      children: <Widget>[
        _buildHeader(context),
        Positioned(
          left: MediaQuery.of(context).size.width * 0.70,
          top: MediaQuery.of(context).size.width * 0.30,
          child: const CircleWidget(
            width: 60,
            height: 60,
            outerRadius: 25.0,
            innerRadius: 8.0,
            circleColor: Color(0xFF0098a6),
          ),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width * 0.65,
          top: MediaQuery.of(context).size.width * 0.65,
          child: const CircleWidget(
            width: 40,
            height: 40,
            outerRadius: 15.0,
            innerRadius: 4.0,
            circleColor: Color(0xFF00bcd5),
          ),
        ),
        Positioned(
          right: MediaQuery.of(context).size.width * 0.30,
          top: MediaQuery.of(context).size.width * 1.1,
          child: const CircleWidget(
            width: 50,
            height: 50,
            outerRadius: 20.0,
            innerRadius: 4.0,
            circleColor: Color(0xFFb2ebf2),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.20,
            // left: MediaQuery.of(context).size.height * 0.10,
          ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _buildHello(fontSize: MediaQuery.of(context).size.width * 0.23),
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                _buildAboutMe(
                  quarterTurns: 4,
                  fontSize: MediaQuery.of(context).size.width * 0.030,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _buildSmallScreenContent(BuildContext context) {
    return Stack(
      children: <Widget>[
        _buildHeader(context),
        Positioned(
          left: MediaQuery.of(context).size.width * 0.70,
          top: MediaQuery.of(context).size.width * 0.30,
          child: const CircleWidget(
            width: 60,
            height: 60,
            outerRadius: 25.0,
            innerRadius: 8.0,
            circleColor: Color(0xFF0098a6),
          ),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width * 0.65,
          top: MediaQuery.of(context).size.width * 0.65,
          child: const CircleWidget(
            width: 40,
            height: 40,
            outerRadius: 15.0,
            innerRadius: 4.0,
            circleColor: Color(0xFF00bcd5),
          ),
        ),
        Positioned(
          right: MediaQuery.of(context).size.width * 0.30,
          top: MediaQuery.of(context).size.width * 1.2,
          child: const CircleWidget(
            width: 50,
            height: 50,
            outerRadius: 20.0,
            innerRadius: 4.0,
            circleColor: Color(0xFFb2ebf2),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _buildHello(fontSize: MediaQuery.of(context).size.width * 0.23),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                  _buildAboutMe(
                    quarterTurns: 4,
                    fontSize: MediaQuery.of(context).size.width * 0.035,
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.10),
              _buildCookies(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.10),
            ],
          ),
        )
      ],
    );
  }

  // general widgets:-----------------------------------------------------------
  Widget _buildHeader(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: (ScreenUtil.getInstance().setWidth(40)),
        vertical: (ScreenUtil.getInstance().setWidth(20)),
      ),
      child: _buildTitle(),
    );
  }

  Widget _buildTitle() {
    return Row(
      children: <Widget>[
        _buildPortfolio(),
        SizedBox(
          width: ResponsiveWidget.isSmallScreen(context)
              ? MediaQuery.of(context).size.width * 0.10
              : ResponsiveWidget.isMediumScreen(context)
                  ? MediaQuery.of(context).size.width * 0.05
                  : MediaQuery.of(context).size.width * 0.20,
        ),
        ResponsiveWidget.isSmallScreen(context) ? const SizedBox.shrink() : _buildCookies(),
      ],
    );
  }

  Widget _buildPortfolio() {
    return Text(
      Strings.portfolio,
      style: TextStyles.logo,
    );
  }

  Widget _buildCookies() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Image.network(
          Assets.cookies,
          height: 20.0,
          color: Colors.white, //480.0
        ),
        const SizedBox(width: 12.0),
        RichText(
          text: TextSpan(
            // Note: Styles for TextSpans must be explicitly defined.
            // Child text spans will inherit styles from parent
            style: const TextStyle(
              fontSize: 14.0,
              color: Colors.black,
            ),
            children: <TextSpan>[
              TextSpan(
                text: Strings.this_web,
                style: TextStyles.body.copyWith(
                  color: Colors.grey,
                  fontSize: 12.0,
                ),
              ),
              TextSpan(
                text: Strings.cookies,
                style: TextStyles.body.copyWith(
                  color: Colors.white,
                  decoration: TextDecoration.lineThrough,
                  fontSize: 12.0,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildDesign() {
    return Center(
      child: Text(
        Strings.design,
        style: TextStyles.heading.copyWith(
          fontSize: MediaQuery.of(context).size.width * 0.27,
        ),
      ),
    );
  }

  Widget _buildAboutMe({int quarterTurns = 3, double? fontSize}) {
    return RotatedBox(
      quarterTurns: quarterTurns,
      child: Text(
        Strings.mobile_dev,
        style: TextStyles.body.copyWith(
          fontSize: fontSize,
        ),
      ),
    );
  }

  Widget _buildHello({double? fontSize}) {
    return RichText(
      text: TextSpan(
        text: Strings.hello,
        style: TextStyles.sub_heading.copyWith(fontSize: fontSize),
        children: <TextSpan>[
          TextSpan(
            text: '.',
            style: TextStyles.sub_heading.copyWith(
              fontSize: fontSize,
              color: const Color(0xFFff5353),
            ),
          ),
          TextSpan(
            text: Strings.i_am_kayes,
            style: TextStyles.sub_heading.copyWith(
              fontSize: fontSize,
            ),
          )
        ],
      ),
    );
  }
}
