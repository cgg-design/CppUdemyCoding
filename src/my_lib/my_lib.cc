#include <iostream>

void print_hello_world()
{
    std::cout << "Hello World" << std::endl;
}

unsigned int factorial(unsigned int number)
{
    return number <= 1 ? 1 : factorial(number - 1) * number;
}

bool IsEq(int a, int b){
    if (a==b) return true;
    else return false;
}
