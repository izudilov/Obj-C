//
//  main.m
//  ZI-1
//
//  Created by user179996 on 21.04.2021.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

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
        float div = (float3)firstNumber / secondNumber;

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


    }
    return 0;
}
