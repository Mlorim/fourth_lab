#include <iostream>
#include <cassert>
using namespace std;

#include "matrix.hpp"

void TestTranspose() {
    const Matrix<double> m = Matrix<double>::Identity(10);
    Matrix<double> m_T = m.transpose();
    assert(m_T.getDeterminantSimple() == m.getDeterminantSimple());
    cout << "Transpose tests passed!" << endl;
}