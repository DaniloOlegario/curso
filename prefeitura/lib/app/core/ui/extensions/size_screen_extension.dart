/* extensão para facilitar com a responsividade criado após a intalação de um package 'flutter screenutil'*/

import 'package:flutter_screenutil/flutter_screenutil.dart';

extension SizeScreenExtenson on num {
  double get w => ScreenUtil().setWidth(this);
  double get h => ScreenUtil().setHeight(this);
  double get r => ScreenUtil().radius(this);
  double get sp => ScreenUtil().setSp(this);
  double get sw => ScreenUtil().screenWidth * this;
  double get sh => ScreenUtil().screenHeight * this;
  double get statusBartheight => ScreenUtil().statusBarHeight * this;
}
