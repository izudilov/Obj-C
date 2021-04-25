//
//  main.m
//  ZI-1
//
//  Created by user179996 on 21.04.2021.
//

#import <Foundation/Foundation.h>

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

int main(int argc, const char * argv[]) {
    @autoreleasepool {


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
        NSLog(@"Result: \n sum = %li, \n sub = %li, \n mul = %li, \n div = %li, \n rem = %li", (long)sum, (long)sub, (long)mul, (long)div, (long)equal);


        
        
// `````````````````````````````````````````````````````````````````````````````````
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
