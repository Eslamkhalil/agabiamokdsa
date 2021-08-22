import 'package:agabiamokdsa/modules/home_screen/home_model.dart';
import 'package:flutter/material.dart';


Widget defaultFormField(
        {TextEditingController controller,
        String hint,
        Function onTap,
        IconData preIcon,
        IconData sufIcon,
        Function suffixPressed,
        bool isPassword,
        Function onChange}) =>
    TextFormField(
      controller: controller,
      onTap: onTap,
      obscureText: isPassword,
      onChanged: onChange,
      validator: (value) {
        if (value.isEmpty) {
          return '$hint must be provided';
        }
        return null;
      },
      decoration: InputDecoration(
        prefixIcon: Icon(
          preIcon,
          color: Colors.grey,
        ),
        suffixIcon: IconButton(
          icon: Icon(sufIcon),
          color: Colors.grey,
          onPressed: suffixPressed,
        ),
        // contentPadding: EdgeInsets.symmetric(horizontal:16.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
        hintText: hint,
      ),
    );

Widget defaultTextButton({String title, Function tap, Color color}) =>
    TextButton(
      onPressed: tap,
      child: Text(
        title,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0, color: color),
      ),
    );

Widget defaultButton ({String buttonTitle = 'الذهاب الى الصلاة ', Function onTap}) => Container(
  width: double.infinity,
  margin: EdgeInsets.all(36.0),
  height: 45.0,
  child:   ElevatedButton(
      style: ElevatedButton.styleFrom(
        //  primary: Color(0xFF7f5985),
          onPrimary: Colors.white,

          shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0)) )
      ),
      onPressed: onTap, child: Text(buttonTitle,style: TextStyle(
    fontSize: 24.0,
  ),)),
);
void navigateTo({@required context, @required Widget widget}) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
}

void navigateAndFinish({@required context, @required Widget widget}) {
  Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => widget),
      (Route<dynamic> route) => false);
}
Widget buildPrayArticle({
  dynamic model,
  double fontSize = 24.0,
}) {
  return Column(
    children: [
      Center(
          child: Text(

            model.title ?? '',
            textDirection: TextDirection.rtl,
            style: TextStyle(

              color: Colors.deepOrange,
              fontSize: 30.0,
              letterSpacing: 0.1,
              fontWeight: FontWeight.bold,
            ),
          )),
      Text(
        model.body ?? '',
        textDirection: TextDirection.rtl,
        style: TextStyle(
          color: Colors.white,
          fontSize: fontSize,
          letterSpacing: 0.1,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  );
}

Widget buildListPreyItem(HomeModel model ,{double width = 250 , double height = 150,Function onTap}) => InkWell(
  onTap: onTap,
  child:   Stack(
    alignment: Alignment.bottomCenter,
    children: [
      Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              image: AssetImage(model.image),
              fit: BoxFit.cover,
            )),
      ),
      Container(
        width: 250.0,
        color: Colors.grey.withOpacity(.2),
        child: Text(
          model.title,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24.0,
          ),
        ),
      ),
    ],
  ),
);





