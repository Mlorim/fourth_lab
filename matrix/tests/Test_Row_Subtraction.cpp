#include <iostream>
#include <cassert>
using namespace std;

#include "matrix.hpp"

void TestRowSubstraction() {
    Matrix<int> ms = Matrix<int>(3, 3, 3);
    for (int i = 0; i < ms.get_rows() - 1; i++) {
        ms.row_subtraction(i, i+1, 1);
    }
    assert(ms.getDeterminant() == 0);
    cout << "Row Substraction tests passed!" << endl;
}