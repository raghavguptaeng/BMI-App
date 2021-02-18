class Brain{
  Brain({this.weight,this.height});
  final int weight;
  final int height;
  double _bmi;
  String calculateBmi(){
    _bmi = weight/((height/100)*(height/100));
    return _bmi.toStringAsFixed(1);
  }
  String result(){
    if(_bmi>=25)
      return "OverWeight";
    else if(_bmi>18.5)
      return "Normal";
    else
      return "Underweight";
  }
  String inter(){
    String res = result();
    if(res=="OverWeight"){
      return "You should do more exercise and maintain a healthy lifestyle. Hitting a gym is also a good choice";
    }
    else if(res=='Normal'){
      return "You Have a perfectly normal BMI. Maintain healthy lifestyle for a prolongrd life and a better quality life";
    }
    else{
      return "You have a low BMI. You should focus on diet and add more carbs to your diet. Regular exercising will also help";
    }
  }
}