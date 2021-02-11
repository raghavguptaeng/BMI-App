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
    //ToDo: add interpretation and make our app fully functional
  }
}