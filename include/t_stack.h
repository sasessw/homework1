#ifndef TEMPLATE_STACK_T_STACK_H
#define TEMPLATE_STACK_T_STACK_H

#include <iterator>

template <typename T> class stack{
public:
    stack<T>() noexcept ;
    stack<T>(size_t size) noexcept ;
    size_t count(T&&) const;
    void push(T) noexcept ;
    T pop() ;
    ~stack() noexcept ;
    stack<T>(const stack<T>&) noexcept ;
    stack<T>(stack<T>&&) noexcept ;

    stack<T>& operator= (stack<T>&&) noexcept ;
    stack<T>& operator=(const stack<T>&) noexcept ;
    bool empty() noexcept ;
private:
    T * array_;
    size_t array_size_;
    size_t count_;
};

template <class T>
stack<T>& stack<T>::operator=(stack<T> && a) noexcept {

    T* pOrig = array_;  //scott meyers Item 11:Handle assignment to self in operator=
    array_ = new T(*a.array_);
    delete pOrig;

    array_ = a.array_;
    count_ = a.count_;
    a.array_size_ = nullptr;
    a.array_ = nullptr;
    a.count_ = nullptr;
    return *this;
};

template <class T>
stack<T>& stack<T>::operator=(const stack<T> & a) noexcept {

    T* pOrig = array_;
    array_ = new T(*a.array_);
    delete pOrig;

    array_size_ = a.array_size_;
    count_ = a.count_;
    std::copy(std::begin(array_), std::end(array_), std::begin(a.array_));
    return *this;
}

template <typename T>
stack<T>::stack(stack<T>&& a) : array_ {a.array_}, count_{a.count_} noexcept{
    a.array_size_ = nullptr;
    a.array_ = nullptr;
    a.count_ = nullptr;
}

template <typename T>
stack<T>::stack(const stack<T>& a) noexcept {
    array_size_ = a.array_size_;
    count_ = a.count_;
    std::copy(std::begin(array_), std::end(array_), std::begin(a.array_));
}


template <typename T> bool stack<T>::empty() noexcept {
        return count_ == 0;
}

template <typename T>
stack<T>::stack() noexcept : array_size_(10),count_(0),array_(new T[10]){}

template <typename T>
stack<T>::stack(size_t size) noexcept : array_size_(size),count_(0),array_(new T[size-1]){}

template <typename T> void stack<T>::push(T T_value) noexcept {
    if (count_ == array_size_) {
        T* newArray_ = new T[array_size_*2];
        std::copy(array_, array_ + array_size_, newArray_);
        delete[] array_;
        array_ = newArray_;
        array_size_*=2;
    }
    array_[count_++] = T_value;
}

template <typename T> T stack<T>::pop()  {
    if(count_ != 0) {
        T tmp = std::move(array_[count_]);
//        array_[count_] = NULL;
        --count_;
        return tmp;
    } else {
        throw "pop exception";
    }
}

template <typename T> stack<T>::~stack() noexcept {
    delete[] array_;
}

#endif //TEMPLATE_STACK_T_STACK_H
