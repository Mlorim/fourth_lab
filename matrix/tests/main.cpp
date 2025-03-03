#include <iostream>
using namespace std;

void TestDeterminat();
void TestTranspose();
void TestRowSubstraction();

int main() {
    TestDeterminat();
    TestTranspose();
    TestRowSubstraction();

    cout << "All tests passed!" << endl;
}