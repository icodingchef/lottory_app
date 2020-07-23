import 'dart:math';

Set<int> lottoNumber(){

  final Set<int> lottoSet = <int>{};
  final random = Random();
  //var num;

  while(lottoSet.length != 6){

    //num = random.nextInt(45) + 1;
    lottoSet.add(random.nextInt(45) + 1);

  }

  print('당첨번호');
  print(lottoSet.toList());

  return lottoSet;
}

Set<int> myNumber(){

  final Set<int> mySet = <int>{};
  final random = Random();

  while(mySet.length != 6){
    mySet.add(random.nextInt(45) +1);
  }

  print('내 추첨번호');
  print(mySet.toList());

  return mySet;
}

void checkNumber(Set<int> lottoSet, Set<int> mySet){

  int match = 0;

  for(int lotto in lottoSet){
    for(int myNum in mySet){

      if(lotto == myNum){
        match++;
        print('당첨번호: $lotto');
      }
    }
  }

  print('$match개의 당첨번호가 있습니다!');
}

void main(){

  Set<int> lottoFinal = lottoNumber();
  Set<int> myFinal = myNumber();
  checkNumber(lottoFinal, myFinal);
}

