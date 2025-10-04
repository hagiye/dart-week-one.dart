
void main() {
  print('=== Task 1: Define Variables ===');
  task1();
  
  print('\n=== Task 2: Type Conversion ===');
  task2();
  
  print('\n=== Task 3: Conversion Function ===');
  convertAndDisplay('42');
  convertAndDisplay('3.14');
  convertAndDisplay('hello');
  
  print('\n=== Task 4: Control Flow ===');
  task4();
  
  print('\n=== Task 5: Combine Data & Control Flow ===');
  task5();
}

// Task 1: Define Variables
void task1() {
  // Define variables of different types
  int age = 25;
  double height = 5.9;
  String name = 'John Doe';
  bool isStudent = true;
  List<int> scores = [85, 92, 78, 96, 88];
  
  // Print all variables
  print('Integer: $age');
  print('Double: $height');
  print('String: $name');
  print('Boolean: $isStudent');
  print('List<int>: $scores');
}

// Task 2: Type Conversion
// String to int & double
int? stringToInt(String str) {
  return int.tryParse(str);
}

double? stringToDouble(String str) {
  return double.tryParse(str);
}

// int to String & double
String intToString(int number) {
  return number.toString();
}

double intToDouble(int number) {
  return number.toDouble();
}

void task2() {
  // Test string to number conversions
  String numStr = '123';
  print('String "$numStr" to int: ${stringToInt(numStr)}');
  print('String "$numStr" to double: ${stringToDouble(numStr)}');
  
  // Test int to string and double conversions
  int number = 456;
  print('Int $number to String: "${intToString(number)}"');
  print('Int $number to double: ${intToDouble(number)}');
}

// Task 3: Conversion Function
void convertAndDisplay(String number) {
  print('Converting "$number":');
  
  // Convert to int
  int? intValue = stringToInt(number);
  if (intValue != null) {
    print('  As integer: $intValue');
  } else {
    print('  Cannot convert to integer');
  }
  
  // Convert to double
  double? doubleValue = stringToDouble(number);
  if (doubleValue != null) {
    print('  As double: $doubleValue');
  } else {
    print('  Cannot convert to double');
  }
}

// Task 4: Control Flow
void task4() {
  print('\n--- If-Else Examples ---');
  
  // Check if number is positive, negative, or zero
  void checkNumber(int num) {
    if (num > 0) {
      print('$num is positive');
    } else if (num < 0) {
      print('$num is negative');
    } else {
      print('$num is zero');
    }
  }
  
  checkNumber(10);
  checkNumber(-5);
  checkNumber(0);
  
  // Voting eligibility
  void checkVotingEligibility(int age) {
    if (age >= 18) {
      print('Age $age: Eligible to vote');
    } else {
      print('Age $age: Not eligible to vote');
    }
  }
  
  checkVotingEligibility(20);
  checkVotingEligibility(16);
  
  print('\n--- Switch Case: Days of Week ---');
  
  // Days of week using switch
  void printDayOfWeek(int dayNumber) {
    switch (dayNumber) {
      case 1:
        print('$dayNumber: Monday');
        break;
      case 2:
        print('$dayNumber: Tuesday');
        break;
      case 3:
        print('$dayNumber: Wednesday');
        break;
      case 4:
        print('$dayNumber: Thursday');
        break;
      case 5:
        print('$dayNumber: Friday');
        break;
      case 6:
        print('$dayNumber: Saturday');
        break;
      case 7:
        print('$dayNumber: Sunday');
        break;
      default:
        print('$dayNumber: Invalid day number');
    }
  }
  
  for (int i = 1; i <= 8; i++) {
    printDayOfWeek(i);
  }
  
  print('\n--- Loops ---');
  
  // for loop: Print 1 to 10
  print('for loop (1-10):');
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
  
  // while loop: Print 10 to 1
  print('while loop (10-1):');
  int count = 10;
  while (count >= 1) {
    print(count);
    count--;
  }
  
  // do-while loop: Print 1 to 5
  print('do-while loop (1-5):');
  int num = 1;
  do {
    print(num);
    num++;
  } while (num <= 5);
}

// Task 5: Combine Data & Control Flow
void task5() {
  List<int> numbers = [5, 12, 8, 150, 3, 25, 75, 200, 1];
  
  print('Analyzing numbers: $numbers');
  
  for (int number in numbers) {
    print('\nNumber: $number');
    
    // Check if even or odd
    if (number % 2 == 0) {
      print('  Even');
    } else {
      print('  Odd');
    }
    
    // Categorize using switch
    String category;
    switch (number) {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
        category = 'small';
        break;
      case 11:
      case 12:
      case 13: // ... and so on up to 100
        // For simplicity, using range check in switch with cases
        if (number >= 11 && number <= 100) {
          category = 'medium';
        } else if (number <= 10) {
          category = 'small';
        } else {
          category = 'large';
        }
        break;
      default:
        if (number <= 10) {
          category = 'small';
        } else if (number <= 100) {
          category = 'medium';
        } else {
          category = 'large';
        }
    }
    
    // Alternative cleaner approach for categorization
    String sizeCategory;
    if (number >= 1 && number <= 10) {
      sizeCategory = 'small';
    } else if (number >= 11 && number <= 100) {
      sizeCategory = 'medium';
    } else if (number > 100) {
      sizeCategory = 'large';
    } else {
      sizeCategory = 'invalid';
    }
    
    print('  Category: $sizeCategory');
  }
}
