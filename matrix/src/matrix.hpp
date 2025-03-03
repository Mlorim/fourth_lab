#ifndef MATRIX_HPP
#define MATRIX_HPP

#include <iostream>
#include <cstdlib>
#include <vector>
#include <math.h>
using namespace std;
#include "subvector.hpp"

template<typename T>
class Matrix {
subvector<T> data;
unsigned int cols, rows;

private:
    Matrix getMinor(unsigned row, unsigned col) {
        unsigned n = rows - 1;
        Matrix<T> M(n, n);
        int i = 0;
        int j = 0;
        while (i < n*n) {
            if (j/cols != row && j%cols != col) {
                M.data[i++] = data[j++];
            } else {
                j++;
            }
        }
        return M;
    }

public:

    Matrix(subvector<T> const &data, unsigned rows, unsigned cols): data(data), rows(rows), cols(cols) {}
	
    // создание матрицы, заполненных value
	Matrix(unsigned rows, unsigned cols, int value = 0): rows(rows), cols(cols) {
        data = subvector<T>(rows*rows, value);
    }

	// создание единичной матрицы
	static Matrix Identity(unsigned rows) {
        Matrix<T> new_matrix = Matrix<T>(rows, rows);
        unsigned i = 0;
        while (i < rows) {
            new_matrix.operator()(i, i) = 1;
            i++;
        }
        return new_matrix;
    }

	// создание случайной матрицы с заданным детерминантом
	static Matrix getSpecificDeterminantSimple(unsigned n, T determinant) {
        Matrix<T> new_matrix = Identity(n);
        int randInd = rand() % n;
        new_matrix(randInd, randInd) = determinant;
        return new_matrix;
    }

    static Matrix getSpecificDeterminantTriangle(unsigned n, T determinant) {
        Matrix<T> new_matrix = Identity(n);
        int randInd = rand() % n;
        new_matrix(randInd, randInd) = determinant;
        for (int i = 0; i < n; i++) {
            for (int j = i+1; j < n; j++) {
                new_matrix(i, j) = rand() % 5;
            }
        }
        return new_matrix;
    }

    static Matrix getSpecificDeterminantFull(unsigned n, T determinant) {
        Matrix<T> new_matrix = getSpecificDeterminantTriangle(n, determinant);
        int a, b;
        for (int i = 0; i < n*2; i++) {
            a = rand() % n;
            if (a) {
                b = a/2;
                new_matrix.row_subtraction(a, b, -1);
            }
        }
        return new_matrix;
    }

	unsigned int get_rows() const {
        return rows;
    }
	unsigned int get_cols() const {
        return cols;
    }

	Matrix& transpose() {
        subvector<T> temp(rows * cols, 0);
        int i = 0;
        for (unsigned i = 0; i < rows; i++) {
            for (unsigned j = 0; j < cols; j++) {
                temp[j * rows + i] = data[i * cols + j];
            }
        }
        swap(rows, cols);
        data = move(temp);
        return *this;
    }

	Matrix transpose() const {
       Matrix<T> new_matrix = *this;
       new_matrix.transpose();
       return new_matrix;
    }

	T& operator()(unsigned row, unsigned col) {
        return data[row*cols+col];
    }
	T operator()(unsigned row, unsigned col) const {
        return data[row*cols+col];
    }

    T& operator()(unsigned n) {
        return data[n];
    }
	T operator()(unsigned n) const {
        return data[n];
    }

    T getDeterminant(unsigned ok = 1) {
        if (ok) {
            toTriangle();
            transpose();
        } 
        if (rows != cols) {
            return T();
        } else {
            if (rows == 2) {
                return data[0]*data[3] - data[1]*data[2];
            } else {
                T res = 0;
                for (int i = 0; i < cols; i++) {
                    T a = data[i];
                    if (a) {
                        res += pow(-1, i) * a * (getMinor(0, i).getDeterminant(0));
                    }
                }
                return res;
            }
        }
    }

    T getDeterminant() const {
        Matrix temp = *this;
        return temp.getDeterminant();
    }

    T getDeterminantSimple() {
        if (rows != cols) {
            return T();
        } else {
            toTriangle();
            T res = 1;
            for (int i = 0; i < rows; i++) {
                res *= operator()(i, i);
            }
            return res;
        }
    }

    T getDeterminantSimple() const {
        Matrix temp = *this;
        return temp.getDeterminantSimple();
    }

    // b-a
    void row_subtraction(unsigned b, unsigned a, T mult) {
        for (int i = 0; i < cols; i++) {
            operator()(b, i) -= operator()(a, i)*mult;
        }
    }

    void swapRows(int a, int b) {
        for (int i = 0; i < cols; i++) {
            std::swap(operator()(a, i), operator()(b, i));
        }
    }

    Matrix& toTriangle() {
        T mult;
        for (int k = 0; k < rows-1; k++) {
            if (operator()(k, k) > 1e-16 || operator()(k, k) < -(1e-16)) {
                for (int i = k+1; i < rows; i++) {
                    mult = operator()(i, k) / operator()(k, k);
                    row_subtraction(i, k, mult);
                } 
            } else {
                for (int z = k; z < rows; z++) {
                    if (operator()(z, k) > 1e-16 || operator()(z, k) < -(1e-16)) {
                        row_subtraction(k, z, -1);
                    }
                    break;
                }
                if (operator()(k, k) > 1e-16 || operator()(k, k) < -(1e-16)) {
                    for (int i = k+1; i < rows; i++) {
                        row_subtraction(i, k, mult);
                    }
                }   
            }
        }

        return *this;
    }

	
};

template<typename T>
ostream& operator<< (ostream &os, const Matrix<T> &M) {
    unsigned rows = M.get_cols();
    unsigned cols = M.get_rows();
    for (int i = 0; i < rows*cols; i++) {
        os << M(i) << " ";
        if ((i+1) % cols == 0) {
            os << endl;
        }
    }
    os << endl;
    return os;
}

#endif