#include <iostream>
#include "../include/t_stack.h"

int main() {
    int * a = new int;
    try {
        stack<int> A{12};
        for (int i = 0; i < 40; i++) {
            A.push(12);
        }
        for (int i = 0; i < 43; i++) {
            A.pop();
        }
    }
    catch(char const* e)
    {
        std::cerr << e;
    }
    return 0;
}