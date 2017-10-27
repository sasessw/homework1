#include "../include/t_stack.h"
#include <iostream>

void i_Stack(int a){
    try{
        stack<int> A(a);
        for(int i = 0; i < a; i++){
            A.push(888);
        }
        for(int i = 0; i < a; i++){
           std::cout << A.pop() << std::endl;
        }
    }
    catch(char const* e){
        std::cerr << e;
    }
}

int main(){
    i_Stack(4);
}
