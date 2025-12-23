void main() {
//1
    String myName = 'Omurbek';
    int myAge = 19;
    String myCity = 'Bishkek';
    String myJob = 'student';
    String myEnthusiasm = 'games';

    print(myName);
    print(myAge);
    print(myCity);
    print(myJob);
    print(myEnthusiasm);

    print('Hello! My name is $myName.');
    print('I am $myAge years old and I live in ' + myCity +'.');
    print('My profession is '+ myJob + '.');
    print('In my free time, I enjoy $myEnthusiasm.');


//2
    int mySalary = 2000;
    int yearlySalary = mySalary * 12;
    print(yearlySalary);
    double bonusSalary = 0.1;
    print(yearlySalary % 10);
    int yearlySalaryBonus = yearlySalary + 2400;
    print(yearlySalaryBonus);
    print('My yearly income: $yearlySalary USD.');
    print('My yearly income with 10% bonus: $yearlySalaryBonus USD.');


//3
    String greeting = " Knowledge is power, but practice makes perfect. ";
    print(greeting.toUpperCase());
    print(greeting.replaceAll('practice', 'experience'));
    print(greeting.trim());
    print(greeting.contains('power'));


//4
    int apples = 50;
    int people = 10;
    print(apples ~/ people);
    print(apples % people);
    print('Each person gets 5 apples.');
    print('Each person gets 2 apples.');
    print('Apples left: 0');


//5
    int currentYear = 2025;
    print(currentYear - myAge);


//6
    var city = 'Bishkek';
    final country = "Kyrgyzstan";
    const planet = "Earth";

    city = 'Osh';
    //country = 'Russia'; //final - начинает работать при запуске кода 
    //planet = 'Jupiter'; //const - начинает работать сразу

    print('City: $city.');
    print('City: $country.');
    print('City: $planet.');
}