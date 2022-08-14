//
//  main.c
//  objc-workout
//
//  Created by Julian Miño on 11/08/2022.
//

#include <stdio.h>
#include <stdbool.h>
#include <math.h>
#include <float.h>

// [returnType] [funcName]( [paramType] [optionalPointer *][paramName] ) {}

void convertData(char *name, float height, float weight) {
    height = height * 12 * 2.54;
    weight = weight * .453592;
    printf("%s is %.1f cms tall and weights %.2f kg\n", name, height, weight);
}

float sum(float num1, float num2) {
    return num1 + num2;
}

void changeNumber(int *number) {
    *number = 54321;
}

struct Superhero {
    char *realName;
    char *superName;
    float height;
    float weight;
};

int main(int argc, const char * argv[]) {

//      For Loop
    
//    for (int i = 0; i < argc; i++) {
//        printf("arg %d : %s\n", i, argv[i]);
//    }
    
    
//      Type References
    
//    short   --> %d
//    int     --> %d
//    long    --> %ld
//    float   --> %f
//    double  --> %lf
//    char    --> %c
//    struct
//    pointer
    
    
//      Fahrenheit to Celsius
    
    float fahrenheitTemp;

    printf("Enter Temp in F : ");
    scanf("%f", &fahrenheitTemp);
    float celsiusTemp = (fahrenheitTemp - 32) / 1.8;
    printf("%.1f degrees Celsius\n", celsiusTemp);
    
    
//      Conditionals
    
    int age = 13;

    if (age <= 6) {
        printf("You're in Kindergarten\n");
    } else if (age <= 13) {
        printf("You're in Elementary\n");
    } else {
        printf("You're in High School\n");
    }

    bool isElementary = ((age >= 12) && (age <= 13));

    printf("Is in elementary: %d\n", isElementary);

    bool isHighSchool = (age > 13) ? 1 : 0;

    printf("Is in High School: %d\n", isHighSchool);
    
    
//      Math Operators
    
    printf("3 + 2 = %d\n", 3 + 2);
    printf("3 - 2 = %d\n", 3 - 2);
    printf("3 * 2 = %d\n", 3 * 2);
    printf("3 / 2 = %d\n", 3 / 2);
    printf("3 %% 2 = %d\n", 3 % 2);
    
    
//      Casting Types
    
    printf("3 / 2 = %.2f\n", 3 / (float) 2);
    
    
//      Ordered Operations
    
    printf("2 + 1 * 3 = %d\n", 2 + 1 * 3);
    printf("(2 + 1) * 3 = %d\n", (2 + 1) * 3);
    
    
//      Shorthand Notation
    
    int i = 0;
    printf("i++ = %d\n", i++); // Increases "i" AFTER printf
    printf("++i = %d\n", ++i); // Increases "i" BEFORE printf
    printf("i += 5 %d\n", i += 5);
    printf("i -= 5 %d\n", i -= 5);
    printf("i *= 5 %d\n", i *= 5);
    printf("i /= 5 %d\n", i /= 5);
    

//      Math Functions
    
    printf("Ceiling of 20.4: %lf\n", ceil(20.4));
    printf("Flooring of 20.4: %lf\n", floor(20.4));
    printf("Absolute value of -20.4: %lf\n", fabs(-20.4));
    printf("Square Root of 20.4: %lf\n", sqrt(20.4));
    printf("Exponent of 20.4: %lf\n", exp(20.4));
    printf("Square Power of 20.4: %lf\n", pow(20.4, 2));
    
//      Print Odd Numbers with For-Loop
    
    for (int i = 0; i <= 10; i++) {
        if (i == 9) {
            break;
        }

        if (i == 7) {
            continue;
        }

        if (i % 2) {
            printf("i : %d\n", i);
        }
    }
    
    
//      While-Loop
    
    int j = 1;

    while (j <= 10) {
        printf("j: %d\n", j);
        j++;
    }
    
    
//      Do-While Loop
    
    int guess;

    do {
        printf("Guess Between 0 and 20: ");
        scanf("%d", &guess);
    } while (guess != 15);
    
    
//      Functions (created at the top)
    
    char *name = "Julian";

    convertData(name, 6.10, 140);

    printf("5 + 6 = %.1f\n", sum(5,6));
    
    
//      Pointers
    
    int randNum = 12345;

    printf("randNum value : %d\n", randNum);
    printf("randNum location: %p\n", &randNum); // Location in memory

    int *addrRandNum = &randNum; // Storing the address of the variable "randNum". It needs to be the same value type and also to have a "*" before.

    *addrRandNum = 54321;

    printf("randNum value : %d\n", randNum);
    printf("randNum location: %p\n", &randNum); // Location in memory

    printf("randNum is %zu bytes\n", sizeof(randNum));
    
    
//      Passing a variable as a Value Type
    
    int number = 12345;

    printf("number Value : %d\n", number);

    changeNumber(&number);

    printf("number Value : %d\n", number);
    
    
//      Structs
    
    struct Superhero superman;

    superman.realName = "Clark Kent";
    superman.superName = "Superman";
    superman.height = 6.25;
    superman.weight = 235;

    printf("%s is the hero named %s. He is %.2f ft tall and weighs %.1f lbs\n", superman.realName, superman.superName, superman.height, superman.weight);
    
    return 0;
}
