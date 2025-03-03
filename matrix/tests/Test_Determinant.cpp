#include <iostream>
#include <cassert>
using namespace std;

#include "matrix.hpp"

void TestDeterminat() {
    const Matrix<int> m1 = Matrix<int>::getSpecificDeterminantFull(10, 5);
    Matrix<int> m2 = Matrix<int>::getSpecificDeterminantFull(3, 0);

    assert(m1.getDeterminant() == 5);
    assert(m2.getDeterminant() == 0);
    cout << "Determinant tests passed!" << endl;
}