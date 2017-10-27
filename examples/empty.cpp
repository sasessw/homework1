#include <iostream>
#include "../include/t_stack.h"

using namespace std;

void i_Stack(int a){
    try{
        stack<int> A(a);
        for (size_t i = 0; i <= a; i++){
            A.push(888);
        }
        while(!A.empty()){
            cout << A.pop() << endl;
        }
    }
    catch(char const* e){
        std::cerr << e;
    }
}

int main(){
    i_Stack(7);
    return 0;
}

