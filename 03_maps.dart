
void main(){
  final Map<String,dynamic> _pokemon = {
    
    'name' : 'ditto',
    'hp': 100,
    'abilites' : <String>['impostor'],
    'sprites' : {
      1: 'ditto/front.png',
      2: 'ditto/back.png'
    }
  };
  
  print(_pokemon);
  print('Name: ${ _pokemon['name'] }');
  print('Name: ${ _pokemon['sprites'] }');
  
  
  print('Name: ${ _pokemon['sprites'][1] }');
  print('Name: ${ _pokemon['sprites'][2] }');
  
  
}