#include <iostream>
#include "Stack.h"

void i_Stack(){
    try{
        stack<int> S(1);
        S.push(444);
        cout << S.pop() << endl;
    }
    catch(char const* e){
        cout << e << endl;
    }
}

int main(){
    i_Stack();
    return 0;
}

