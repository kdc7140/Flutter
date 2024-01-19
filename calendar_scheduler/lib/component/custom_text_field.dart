import 'package:calendar_scheduler/const/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final bool isTime;
  final FormFieldSetter<String> onSaved;

  const CustomTextField({required this.label, required this.isTime, required this.onSaved, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: PRIMARY_COLOR,
            fontWeight: FontWeight.w600,
          ),
        ),
        if (isTime) renderTextField(),
        if (!isTime)
          Expanded(
            child: renderTextField(),
          ),
      ],
    );
  }

  Widget renderTextField() {
    return TextFormField(
      onSaved: onSaved,
      // null 이 return 되면 에러가 없다
      // 에러가 있으면 String 값으로 리턴해준다.
      validator: (String? val){
        if(val == null || val.isEmpty){
          return 'Please, entered value';
        }

        if(isTime){
          int time = int.parse(val);

          if(time < 0){
            return 'Please enter a number better than 0.';
          }

          if(time > 24){
            return 'Please enter a number less than 24.';
          }
        }else{
          if(val.length > 500){
            return 'Please enter no more than 500 characters.';
          }
        }
      },
      cursorColor: Colors.grey,
      maxLines: isTime ? 1 : null,
      expands: !isTime,
      //키보드 타입 설정
      keyboardType: isTime ? TextInputType.number : TextInputType.multiline,
      inputFormatters: isTime ? [
        FilteringTextInputFormatter.digitsOnly, //숫자만 입력가능, 블루투스 키보드 싹다 막힘
      ] : [],
      decoration: InputDecoration(
        border: InputBorder.none,
        filled: true,
        fillColor: Colors.grey[300],
      ),
    );
  }
}
