//
//  main.m
//  ZI-1
//
//  Created by user179996 on 21.04.2021.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"
#import "Pack.h"


BOOL isEnglishLetter(NSString *letter) {

    NSString *letterArray = @"abcdefghijklmnopqrstuvwxyz";

    if (letterArray == nil) return NO;

    NSRange rangeValue = [letterArray rangeOfString:letter options:NSCaseInsensitiveSearch];

    if (rangeValue.length > 0) {
        return YES;
    }
    return NO;
}



NSInteger sum(NSInteger a, NSInteger b) {
    return a + b;
}

NSInteger sub(NSInteger a, NSInteger b) {
    return a - b;
}

NSInteger multiply(NSInteger a, NSInteger b) {
    return a * b;
}

NSInteger divide(NSInteger a, NSInteger b) {
    if (b == 0) {
        NSLog(@"Нельзя делить на ноль");
        return 0;
    }
    return a / b;
}

NSInteger equalZeroOrOne(NSInteger a, NSInteger b) {
    if (b == 0) {
        NSLog(@"Нельзя делить на ноль");
        return 0;
    }
    return a % b;
}

NSInteger calculate(NSString *method, NSInteger a, NSInteger b) {

    if ([method isEqualToString:@"+"]) {
        return sum(a, b);
    }
    else if ([method isEqualToString:@"-"]) {
        return sub(a, b);
    }
    else if ([method isEqualToString:@"*"]) {
        return multiply(a, b);
    }
    else if ([method isEqualToString:@"/"]) {
        return divide(a, b);
    }
    else if ([method isEqualToString:@"%"]) {
        return equalZeroOrOne(a, b);
    }
    else {
        NSLog(@"Функция не знает переданный метод");
        return 0;
    }
}
    
    // Lesson-3
    
    typedef NS_ENUM (NSUInteger, Functions) {
        FunctionSumPremium,
        FunctionSubPremium,
        FunctionMultiPremium,
        FunctionDivPremium,
        FunctionEqualZeroOrOnePremium

    };
    
    NSInteger superCalculate(Functions find, NSInteger a, NSInteger b) {

        switch (find) {
                
            case FunctionSumPremium:
                return sum(a, b);
                break;
            case FunctionSubPremium:
                return sub(a, b);
                break;
            case FunctionMultiPremium:
                return multiply(a, b);
                break;
            case FunctionDivPremium:
                return divide(a, b);
                break;
            case FunctionEqualZeroOrOnePremium:
                return equalZeroOrOne(a, b);
                break;
            default:
                NSLog(@"Я такое не знать");
                return 0;
                
        }
    }
    

    typedef NS_ENUM (NSUInteger, Gender) {
        
        GenderMale,
        GenderFemale
    };

    struct Human {
        
        NSString *name;
        NSInteger age;
        Gender gender;
    };

    typedef struct Human Human;

NSString* stringGender (Gender gender) {
    
    NSString *result = nil;
    switch (gender) {
            
        case GenderMale:
            result = @"Мужской";
            break;
        case GenderFemale:
            result = @"Женский";
            break;
    }
    return result;

}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
  // Lesson-5------------------------------------------------------------------------
        
        
        //Задание 1.
        
        Calculator *calculator = [[Calculator alloc] init];

        NSInteger sum = [calculator sum: 1 plus: 1];
        NSInteger sub = [calculator sub: 15 minus: 5];
        NSInteger mul = [calculator mult: 3 multy: 3];
        NSInteger div = [calculator div: 25 by: 5];

        NSLog(@"Result: \n sum = %li, \n sub = %li, \n mul = %li, \n div = %li", (long)sum, (long)sub, (long)mul, (long)div);

        [calculator release];
        
        //Задание 2.
        
        Crow * alpha = [[Crow new] initWithName:@"Alpha"];
        Goose * beta = [[Goose new] initWithName:@"Beta"];
        Magpie * gamma = [[Magpie new] initWithName:@"Gamma"];

        Pack * pack = [[Pack new] initWithCrow: alpha plusGoose: beta plusMagpie: gamma];

        [pack release];
            
        
 /* // Lesson-3------------------------------------------------------------------------
    
  //Задание 1.
        
        NSArray *numbersArray = @[@1, @2, @3];

        NSLog(@"\nFOR-------------------");
        for (NSInteger i = 0; i < numbersArray.count; i++) {
            NSLog(@"%@", numbersArray[i]);
        }

        NSInteger i = 0;

        NSLog(@"\nWHILE------------------");
        while(i < numbersArray.count) {
            NSLog(@"%@", numbersArray[i]);
            i++;
        }
        
        NSInteger y = 0;
        
        NSLog(@"\nDO-WHILE--------------");
        do {
            NSLog(@"%@", numbersArray[y]);;
            y++;
        } while (y < numbersArray.count);
        
        
    //Задание 2.
        
        NSInteger sum = superCalculate(FunctionSumPremium, 5, 3);
        NSInteger sub = superCalculate(FunctionSubPremium, 7, 5);
        NSInteger multy = superCalculate(FunctionMultiPremium, 2, 2);
        NSInteger div = superCalculate(FunctionDivPremium, 10, 2);
        NSInteger equal = superCalculate(FunctionEqualZeroOrOnePremium, 6, 3);

        NSLog(@"\nEqual: \n sum = %li, \n sub = %li, \n mul = %li, \n div = %li, \n rem = %li", (long)sum, (long)sub, (long)multy, (long)div, (long)equal);
        
    //Задание 3.
        
        Human one;
        one.name = @"Адам";
        one.age = 33;
        one.gender = GenderMale;

        Human two;
        two.name = @"Ева";
        two.age = 30;
        two.gender = GenderFemale;

        NSLog(@"\nПервый: \n Имя: %@ \n Возраст: %li \n Пол: %@", one.name, (long)one.age, stringGender(one.gender));
        NSLog(@"\nВторой: \n Имя: %@ \n Возраст: %li \n Пол: %@", two.name, (long)two.age, stringGender(two.gender));
        
        
        
        
        
        
        
        
        
        //Lesson-2----------------------------------------------------------------------
        
        //Задание 1.
        
        char inputLetter[1];
        NSString *letter;

        printf("Введите букву: ");
        scanf("%1s", inputLetter);

        letter = [NSString stringWithCString:inputLetter encoding:NSUTF8StringEncoding];


        if (isEnglishLetter(letter)) {
            NSLog(@"Буква \"%@\" входит в английский алфавит", letter );
        } else {
            NSLog(@"Буква \"%@\" НЕвходит в английский алфавит", letter );
        }


        //Задание 2.


        NSInteger sum = calculate(@"+", 7, 1);
        NSInteger sub = calculate(@"-", 5, 2);
        NSInteger mul = calculate(@"*", 7, 7);
        NSInteger div = calculate(@"/", 11, 3);
        NSInteger equal = calculate(@"%", 9, 2);
        NSLog(@"Result: \n sum = %li, \n sub = %li, \n mul = %li, \n div = %li, \n rem = %li", (long)sum, (long)sub, (long)mul, (long)div, (long)equal);*/


        
        
// Lesson-1-------------------------------------------------------------------------------
        /*
        
        //Задание 1.

        int firstNumber = 0;
        int secondNumber = 0;

        NSLog(@"------- Задание 1 ------\n");
        NSLog(@"Введите два числа");
        printf("Первое число: ");
        scanf("%d", &firstNumber);
        printf("Второе число: ");
        scanf("%d", &secondNumber);


        NSLog(@"Сумма двух чисел = %d", firstNumber + secondNumber);
        NSLog(@"Разность двух чисел = %d", firstNumber - secondNumber);
        NSLog(@"Произведение двух чисел = %d", firstNumber * secondNumber);
        NSLog(@"Частное двух чисел = %f", (double)firstNumber / secondNumber);

        //Задание 2.

        NSLog(@"------ Задание 2 ------\n");

        int sum = firstNumber + secondNumber;
        int sub = firstNumber - secondNumber;
        int mult = firstNumber * secondNumber;
        float div = (float)firstNumber / secondNumber;

        NSLog(@"\nСумма = %d\n Разность = %d\n Произведение = %d\n Деление = %f", sum, sub, mult, div);


        //Задание 3.

        NSLog(@"------ Задание 3 -------");

        int first;
        int second;
        int third;
        float avg;

        NSLog(@"Введите три числа");
        printf("Первое число: ");
        scanf("%d", &first);
        printf("Второе число: ");
        scanf("%d", &second);
        printf("Третье число: ");
        scanf("%d", &third);

        avg = (first + second + third) / 3.0;

        NSLog(@"Среднее значение = %f", avg);

*/
    }
    return 0;
}
