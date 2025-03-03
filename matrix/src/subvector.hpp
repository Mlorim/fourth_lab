#ifndef SUBVECTOR_HPP
#define SUBVECTOR_HPP

#include <iostream>
#include <cstdlib>
#include <vector>
#include <math.h>
using namespace std;


template<typename T>
class subvector {

T *mas; 
unsigned int top;
unsigned int capacity; 

private:
    void swap(subvector<T> & rhs) {
        T* temp_mas = mas;
        unsigned int temp_top = top;
        unsigned int temp_cap = capacity;
        mas = rhs.mas;
        top = rhs.top;
        capacity = rhs.capacity;
        rhs.mas = temp_mas;
        rhs.top = temp_top;
        rhs.capacity = temp_cap;
    }

public:
    //конструктор
    subvector(): mas(nullptr), top(0), capacity(0) {
        // cout << "Vector Ctor" << endl;
    };

    //конструктор, заполняющий value
    subvector(unsigned n, T value): top(n), capacity(2*n) {
        T* temp = new T[capacity];
        for (int i = 0; i < top; i++) {
            temp[i] = value;
        }
        mas = temp;
        // cout << "Vector value Ctor" << endl;
    }

    //деструктор
    ~subvector() {
        delete[]mas;
        // cout << "Vector Dtor" << endl;
    }

    //конструктор копирования
    subvector(const subvector<T> &rhs) {
        top = rhs.top;
        capacity = rhs.capacity;
        T *new_mas = new T[capacity];
        for (int i = 0; i < top; i++) {
            new_mas[i] = rhs.mas[i];
        }
        mas = new_mas;
        // cout << "Vector Copy Ctor" << endl;

    }

    //оператор присваивания копированием
    subvector& operator= (const subvector<T> &rhs) {
        if (this != &rhs) {
            top = rhs.top;
            capacity = rhs.capacity;
            T *new_mas = new T[capacity];
            for (int i = 0; i < top; i++) {
                new_mas[i] = rhs.mas[i];
            }
            if (mas) {
                T *temp = mas;
                mas = new_mas;
                delete[]temp;
            }
            else {
                mas = new_mas;
            }

        }
        // cout << "Vector Copied" << endl;

        return *this;
        
    }

    //конструктор перемещенея 
    subvector (subvector<T>&& rhs) {
        mas = rhs.mas;
        top = rhs.top;
        capacity = rhs.capacity;
        delete[]rhs.mas;
        rhs.mas = nullptr;
        rhs.top = 0;
        rhs.capacity = 0;
        // cout << "Vector Move Ctor" << endl;

    }

    //оператор присваивания перемещением
    subvector& operator= (subvector<T>&& rhs) {
        if (this != &rhs) {
            swap(rhs);
        }
        // cout << "Vector Moved" << endl;
        return *this;
    }

    unsigned int get_top() const {
        return top;
    }

    unsigned int get_capacity() const {
        return capacity;
    }

    bool push_back(const T& d) {
        if (mas) {
            if (top + 1 <= capacity) {
                mas[top++] = d;
            } else {
                capacity = capacity * 2;
                T *new_mas = new T[capacity];
                for (int i = 0; i < top; i++) {
                    new_mas[i] = mas[i];
                }
                new_mas[top++] = d;
                T *temp = mas;
                mas = new_mas;
                delete[]temp;
            }
        } else {
            capacity = (capacity + 10) * 2;
            T *new_mas = new T[capacity];
            new_mas[top++] = d;
            mas = new_mas;
        }
        return 1;
    } // добавление элемента в конец недовектора с выделением дополнительной памяти при необходимости

    T pop_back() {
        if (top) {
            top--;
            return mas[top];
        } else {
            return T();
        }
    } // удаление элемента с конца недовектора, значение удаленного элемента вернуть (если недовектор пустой, вернуть T{})
    bool resize(unsigned int new_capacity) {
        if (new_capacity > 0) {
            capacity = new_capacity;
            T *new_mas = new T[capacity];
            if (top > capacity) {
                top = capacity;
            }
            for (int i = 0; i < top; i++) {
                new_mas[i] = mas[i];
            }
            T *temp = mas;
            mas = new_mas;
            delete[]temp;
            return 1;
        } else {
            capacity = 0;
            top = 0;
            T *temp = mas;
            mas = nullptr;
            delete[]temp;
            return 0;
        } 
    } // увеличить емкость недовектора 

    void shrink_to_fit() {
        resize(top);     
    } // очистить неиспользуемую память, переехав на новое место с уменьшением capacity до top
    void clear() {
        top = 0;
    } // очистить содержимое недовектора, занимаемое место при этом не меняется

    T& operator[](int i) {
        if (i < top) {
            return mas[i];
        } else {
            return mas[top-1];
        }
    }

    T operator[](int i) const{
        if (i < top) {
            return mas[i];
        } else {
            return mas[top-1];
        }
    }
};


#endif