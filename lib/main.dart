//Dart Basics P1

void main(List<String> args) {
  //Practice1
  String str =
      " đây là kết quả của buổi học thứ 2 về dart: dart basics (phần 1)...";
  String result = practice11(str);
  print(result);

  String result1 = practice12(str);
  print(result1);

  String result2 = practice13(str);
  print(result2);

  //Practice2
  List arr = [
    1,
    2,
    3,
    "đây", //3
    "kết", //4
    "là", //5
    true,
    false, //7
    {true: "buổi", 1: "học", 10.2: ":", false: "dart basics"},
    ['thứ', 'quả', 'về'], //9
    "(phần 1)", //10
    {"flutter": "dart"}, //11
  ];

  String result3 = practice2(arr);
  print(result3);

  //Practice3 Tinh giai thua cua 6
  int num = practice3(6);
  print(num);

  //Practice3 Viet ham chuyen doi qua lai giua string, int, double
  print("convert1 " + convertIntToString(num));
  print("convert2 " + convertStringToInt("24").toString());

  //Practice4
  int a = 10;
  print("add method: ${a.add(2)}");
  print("subtract method: ${a.subtract(2)}");
  print("divide method: ${a.divide(2)}");
  print("multiple method: ${a.multiple(2)}");

  //Practice5
  List<int> arrayNum = [];
  for (int i = 0; i <= 100; i++) {
    arrayNum.add(i);
  }
  // print(arrayNum);
  practice5(arrayNum);

  //Practice6
  practice6(20);
}

void practice6(int num) {
  List<int> arrayPrimeNum = [];
  if (num <= 2) {
    arrayPrimeNum = [0, 1, 2];
  } else {
    arrayPrimeNum.add(2);
    for (int i = 2; i < num; i++) {
      for (int j = 0; j < arrayPrimeNum.length; j++) {
        if (i % arrayPrimeNum[j] != 0) {
          arrayPrimeNum.add(i);
        }
      }
    }
  }
  print(arrayPrimeNum);
}

void practice5(List<int> arr) {
  List<int> evenNum = [];
  List<int> oddNum = [];
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] % 2 == 0)
      evenNum.add(arr[i]);
    else
      oddNum.add(arr[i]);
  }
  print(evenNum);
  print(oddNum);
}

void checkNumber(num number) {
  if (number <= 0) throw Exception("Number <=");
}

//sample code
//https://github.com/dart-lang/samples/blob/master/extension_methods/lib/privacy_source.dart
extension on int {
  int add(int num) {
    // if (this < 0) {
    //   return this;
    // }
    checkNumber(num);
    return this + num;
  }

  int subtract(int num) {
    checkNumber(num);
    return this - num;
  }

  int divide(int num) {
    checkNumber(num);
    return this * num;
  }

  double multiple(int num) {
    checkNumber(num);
    return this / num;
  }
}

String convertIntToString(int input) => input.toString();

int convertStringToInt(String input) {
  return int.parse(input);
}

int practice3(int num) {
  int result = 1;
  if (num != null) {
    for (int i = 1; i <= num; i++) {
      result = result * i;
    }
  }
  return result;
}

String practice2(List arr) {
  final item9 = arr[9] as List;
  Map item8 = arr[8] as Map;

  List results = [];
  results.add((arr[3] as String).capitalize());
  results.add((arr[5] as String));
  results.add((arr[4] as String));
  results.add(item9[1]);
  results.add(arr[8][true] as String);
  results.add(arr[8][1] as String);
  results.add(item9[0]);
  results.add(arr[1]);
  results.add(item9[2]);
  results.add(
      ((arr[11]["flutter"] as String).capitalize()) + (arr[8][10.2] as String));
  results.add((arr[8][false] as String).toUpperCase());
  results.add(arr[10]);
  return results.join(' ');
}

String practice11(String input) {
  input = input.trim();
  String result = input.substring(0, 1).toUpperCase();
  result = result + input.substring(1, 14);
  result = result + input.substring(18, 37);
  result = result + input.substring(37, 38).toUpperCase();
  result = result + input.substring(38, 43);
  result = result + input.substring(43, 55).toUpperCase();
  result = result + input.substring(55, input.indexOf('...'));
  return result;
}

String practice12(String input) {
  final result = input
      .trim()
      .capitalize()
      .replaceFirst('của ', '')
      .replaceFirst('dart', 'Dart')
      .replaceFirst('dart basics', 'DART BASICS')
      .replaceAll('...', '');
  return result;
}

String practice13(String input) {
  var rawData = input.trim().replaceAll('...', '').split(' ');
  rawData[0] = rawData[0].capitalize();
  rawData[10] = rawData[10].replaceFirst('d', 'D');
  rawData[11] = rawData[11].toUpperCase();
  rawData[12] = rawData[12].toUpperCase();
  rawData.remove(rawData[4]);
  final stringResult = rawData.join(' ');
  return stringResult;
}

extension StringExtension on String {
  String capitalize() {
    if (isEmpty) {
      return this;
    }
    return this[0].toUpperCase() + substring(1);
  }
}
